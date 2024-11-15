from flask import Flask, render_template, request, session, flash, redirect, url_for
import sqlite3 as sql
import os
import secrets

# Create Flask instance.
app = Flask(__name__)
# Set a secret key for sessions.
app.secret_key = secrets.token_hex(16)
# Define the new database file.
user_accounts_db = 'UIX/user_accounts.db'
promotions_db = 'UIX/promotions.db'


@app.route('/')
def home():
    return render_template('home.html')

@app.route('/about')
def about():
    return render_template('about.html')

@app.route('/account')
def account():
    if 'logged_in' in session:
        username = session['name']
        try:
            with sql.connect(user_accounts_db) as con:
                cur = con.cursor()
                cur.execute("SELECT first_name, last_name, email, date_of_birth, reward_balance, promotion_tier FROM user_accounts WHERE username = ?", (username,))
                user = cur.fetchone()
                
                if user:
                    return render_template('account.html', user=user)
                else:
                    flash('User not found', 'danger')
                    return redirect(url_for('login'))
        except sql.Error as e:
            flash(f"Database error: {e}", 'danger')
            return redirect(url_for('login'))
    else:
        flash('You must be logged in to view your account', 'warning')
        return redirect(url_for('login'))
    
@app.route('/admin')
def admin():
    return render_template('admin.html')

@app.route('/big-winners')
def big_winners():
    return render_template('big-winners.html')

@app.route('/create-account', methods=['GET', 'POST'])
def create_account():
    if request.method == 'POST':
        first_name = request.form['first_name']
        last_name = request.form['last_name']
        email = request.form['email']
        date_of_birth = request.form['date_of_birth']
        username = request.form['username']
        password = request.form['password']

        try:
            with sql.connect(user_accounts_db) as con:
                cur = con.cursor()

                cur.execute("SELECT MAX(account_num) FROM user_accounts")
                max_account_num = cur.fetchone()[0]
                if max_account_num is None:
                    account_num = 1000001
                else:
                    account_num = max_account_num + 1

                password_hash = password

                reward_balance = 0
                security_level = 1

                cur.execute("""
                    INSERT INTO user_accounts (account_num, username, password_hash, first_name, last_name, email, date_of_birth, reward_balance, security_level)
                    VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)
                """, (account_num, username, password_hash, first_name, last_name, email, date_of_birth, reward_balance, security_level))

                con.commit()
                flash('Account created successfully!', 'success')
                return redirect(url_for('login'))

        except sql.Error as e:
            flash(f"Database error: {e}", 'danger')
            return redirect(url_for('create_account'))

    return render_template('create-account.html')


@app.route('/directory')
def directory():
    return render_template('directory.html')

@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        username = request.form['username']
        password = request.form['password']

        try:
            with sql.connect(user_accounts_db) as con:
                cur = con.cursor()
                cur.execute("SELECT * FROM user_accounts WHERE username = ?", (username,))
                user = cur.fetchone()

                if user and user[2] == password:
                    session['logged_in'] = True
                    session['name'] = user[1]
                    session['SecurityLevel'] = user[8]
                    flash('Login successful!', 'success')
                    return redirect(url_for('home'))
                else:
                    flash('Invalid username or password', 'danger')
        except sql.Error as e:
            flash(f"Database error: {e}", 'danger')
            return render_template('login.html')


    return render_template('login.html')

@app.route('/logout', methods=['GET', 'POST'])
def logout():
    if request.method == 'POST':
        session.pop('logged_in', None)
        session.pop('name', None)
        session.pop('SecurityLevel', None)
        flash('You have been logged out.', 'success')
        return redirect(url_for('login'))

    return redirect(url_for('login')) 

@app.route('/promotions')
def promotions():
    if 'logged_in' in session:
        username = session['name']
        try:
            with sql.connect(user_accounts_db) as con_user:
                cur_user = con_user.cursor()
                cur_user.execute("SELECT reward_balance, promotion_tier FROM user_accounts WHERE username = ?", (username,))
                user = cur_user.fetchone()
                
                if user:
                    user_reward_balance = user[0]
                    user_promotion_tier = user[1]

                    with sql.connect(promotions_db) as con_promotions:
                        cur_promotions = con_promotions.cursor()
                        cur_promotions.execute("SELECT promotion_name, reward_value FROM promotions WHERE promotion_tier = ?", (user_promotion_tier,))
                        promotions = cur_promotions.fetchall()

                        if promotions:
                            promotion_data = [{'promotion_name': name, 'reward_value': value} for name, value in promotions]
                        else:
                            flash('No promotions found for this user', 'danger')
                            return redirect(url_for('home'))
                        
                    return render_template('promotions.html', user_reward_balance=user_reward_balance, user_promotion_tier=user_promotion_tier, promotion_data=promotion_data)
                else:
                    flash('No promotions found for this user', 'danger')
                    return redirect(url_for('home'))
                
        except sql.Error as e:
            flash(f"Database error: {e}", 'danger')
            return redirect(url_for('home'))
    else:
        flash('You must be logged in to view promotions', 'warning')
        return redirect(url_for('login'))




@app.route('/rewards')
def rewards():
    return render_template('rewards.html')

@app.route('/slot-map')
def slot_map():
    return render_template('slot-map.html')


if __name__ == '__main__':
    app.run(debug=True)
