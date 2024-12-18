CREATE TABLE IF NOT EXISTS slot_machines (
    machine_id INTEGER PRIMARY KEY,
    name TEXT,
    availability INTEGER,  -- for boolen
    average_session REAL,
    location TEXT,
    location_features TEXT,  -- JSON array string
    game_theme TEXT,
    game_type TEXT,
    game_features TEXT,  -- JSON array string
    maximum_bet REAL,
    minimum_bet REAL,
    rtp REAL,
    reward_program INTEGER  -- for boolen
);

INSERT INTO slot_machines (machine_id, name, availability, average_session, location, location_features, game_theme, game_type, game_features, maximum_bet, minimum_bet, rtp, reward_program) VALUES
(1, 'Pirate Plunder', 1, 94.31, 'Star7', '["entrance", "walkway_adjacent"]', 'Pirate', 'Video Slots', '["gamble_feature", "seasonal_features"]', 52.23, 2.70, 88.88, 1),
(2, 'Fantasy Fortune', 1, 35.61, 'Star23', '["decoration", "entrance", "bathroom", "table_service"]', 'Fantasy', 'Video Slots', '["high_roller_spins", "wild_symbols"]', 343.13, 3.75, 91.05, 1),
(3, 'Wild West Whirl', 1, 43.63, 'Star15', '["decoration", "restaurant"]', 'Wild West', 'Megaways', '["cascading_reels"]', 208.26, 2.21, 92.06, 0),
(4, 'Gold Rush', 0, 51.87, 'Star35', '["decoration"]', 'Wild West', 'Video Slots', '["bonus_rounds", "scatter_symbols"]', 291.60, 2.71, 85.05, 0),
(5, 'Mystic Moon', 0, 34.19, 'Star18', '["table_service", "walkway_adjacent"]', 'Fantasy', 'Progressive Slots', '["re_spins", "bonus_rounds"]', 372.62, 4.13, 93.39, 0),
(6, 'Treasure Trove', 1, 102.56, 'Star50', '["entrance", "restaurant"]', 'Pirate', 'Progressive Slots', '["re_spins"]', 279.30, 3.60, 91.77, 0),
(7, 'Pirate Gold', 0, 40.87, 'Star3', '["decoration", "walkway_adjacent"]', 'Pirate', '3D Slots', '["scatter_symbols"]', 461.15, 4.73, 94.46, 0),
(8, 'Space Odyssey', 0, 43.30, 'Star45', '["central", "entrance", "table_service"]', 'Sci-Fi', 'Bonus Slots', '["cascading_reels"]', 474.22, 1.20, 95.96, 0),
(9, 'Fruit Fiesta', 1, 113.24, 'Star28', '["bar", "walkway_adjacent", "bathroom", "restaurant"]', 'Fruit', 'Progressive Slots', '["themed_bonus_rounds", "symbol_transformations", "walking_wilds", "expanding_wilds"]', 97.11, 3.80, 93.04, 1),
(10, 'Classic Jackpot', 1, 71.22, 'Star39', '["bar"]', 'Fruit', 'Classic Slots', '["adjacent_pays", "multipliers", "split_symbols"]', 155.41, 2.44, 87.79, 1),
(11, 'Scatter Delight', 1, 119.83, 'Star12', '["decoration"]', 'Fruit', 'Classic Slots', '["symbol_transformations", "scatter_symbols", "split_symbols", "megaways"]', 38.32, 0.74, 88.05, 0),
(12, 'Cowboy Cash', 1, 86.06, 'Star44', '["entrance", "central"]', 'Wild West', '3D Slots', '["pay_both_ways", "symbol_transformations", "cascading_reels"]', 137.67, 2.03, 95.53, 0),
(13, 'Sci-Fi Spin', 0, 41.73, 'Star16', '["bar", "bathroom", "central"]', 'Sci-Fi', 'Megaways', '["buy_feature"]', 68.72, 0.08, 95.89, 0),
(14, 'Pyramid Riches', 0, 27.22, 'Star29', '["walkway_adjacent", "table_service", "decoration"]', 'Egyptian', 'Video Slots', '["pay_both_ways", "megaways"]', 153.43, 1.46, 91.11, 1),
(15, 'Pharaoh\s Treasure', 1, 109.28, 'Star13', '["bar"]', 'Egyptian', 'Video Slots', '["stacked_wilds", "mystery_symbols"]', 32.56, 1.16, 85.24, 1),
(16, 'Golden Age', 1, 119.50, 'Star37', '["entrance"]', 'Egyptian', '3D Slots', '["seasonal_features", "adjacent_pays", "stacked_wilds", "pick_and_click"]', 202.09, 2.87, 93.31, 0),
(17, 'Western Wilds', 1, 61.13, 'Star6', '["table_service", "central"]', 'Wild West', 'Themed Slots', '["sticky_wilds", "stacked_wilds"]', 67.44, 1.11, 96.47, 1),
(18, 'Pirate\s Cove', 1, 39.20, 'Star2', '["entrance", "walkway_adjacent"]', 'Pirate', 'Bonus Slots', '["pick_and_click", "expanding_wilds"]', 136.17, 3.63, 95.17, 1),
(19, 'Western Trails', 1, 77.62, 'Star11', '["entrance", "bar", "decoration", "bathroom"]', 'Wild West', 'Classic Slots', '["stacked_wilds"]', 85.71, 0.14, 94.05, 0),
(20, 'Mystic Journey', 0, 53.78, 'Star41', '["decoration", "table_service"]', 'Fantasy', 'Classic Slots', '["random_wilds", "colossal_symbols", "pay_both_ways", "themed_bonus_rounds"]', 287.43, 2.55, 87.59, 0),
(21, 'Jungle Gem', 0, 79.40, 'Star31', '["table_service", "decoration", "entrance"]', 'Fruit', 'Themed Slots', '["pay_both_ways", "pick_and_click", "re_spins"]', 250.87, 1.73, 92.80, 0),
(22, 'Adventurer\s Quest', 0, 53.32, 'Star49', '["bathroom", "walkway_adjacent"]', 'Adventure', 'Themed Slots', '["scatter_symbols", "expanding_wilds", "walking_wilds", "seasonal_features"]', 317.47, 0.42, 89.42, 0),
(23, 'Fountain of Fantasy', 0, 74.41, 'Star33', '["bathroom"]', 'Fantasy', 'Megaways', '["vip_bonuses", "expanding_wilds"]', 255.14, 1.80, 96.98, 0),
(24, 'Ocean\s Wealth', 1, 95.71, 'Star5', '["table_service", "central"]', 'Ocean', 'Bonus Slots', '["colossal_symbols", "megaways", "mystery_symbols", "seasonal_features"]', 14.73, 3.45, 90.78, 0),
(25, 'Fantasy Fortunes', 0, 98.06, 'Star27', '["central", "decoration"]', 'Fantasy', 'Bonus Slots', '["free_spins", "vip_bonuses", "progressive_jackpot"]', 477.11, 1.30, 87.60, 0),
(26, 'Gold Mine', 0, 84.86, 'Star40', '["walkway_adjacent", "bathroom", "bar", "entrance"]', 'Fantasy', 'Megaways', '["progressive_jackpot", "bonus_rounds", "stacked_wilds"]', 22.07, 3.69, 93.24, 1),
(27, 'Celestial Spins', 1, 55.90, 'Star8', '["bar", "table_service", "central", "entrance"]', 'Sci-Fi', 'Megaways', '["jackpot_wheel", "megaways", "cascading_reels", "sticky_wilds"]', 27.52, 3.83, 95.12, 0),
(28, 'Treasure Temple', 0, 100.45, 'Star36', '["table_service", "restaurant", "decoration"]', 'Pirate', 'Video Slots', '["pay_both_ways", "expanding_wilds", "multipliers"]', 175.10, 4.47, 88.22, 0),
(29, 'Raging River', 1, 104.59, 'Star14', '["table_service", "central"]', 'Pirate', 'Video Slots', '["pay_both_ways", "wild_symbols", "walking_wilds", "cascading_reels"]', 230.59, 2.15, 97.75, 0),
(30, 'Ancient Riches', 0, 83.05, 'Star20', '["decoration"]', 'Adventure', 'Bonus Slots', '["megaways", "symbol_transformations"]', 153.68, 2.94, 90.98, 1),
(31, 'Jungle Fever', 1, 49.39, 'Star26', '["walkway_adjacent", "bar"]', 'Jungle', 'Megaways', '["free_spins", "sticky_wilds"]', 206.09, 1.42, 90.64, 1),
(32, 'Enchanted Forest', 1, 38.09, 'Star24', '["central", "entrance"]', 'Fantasy', 'Bonus Slots', '["adjacent_pays", "wild_symbols", "sticky_wilds", "megaways"]', 312.34, 2.23, 88.42, 0),
(33, 'Astro Adventure', 0, 119.08, 'Star1', '["bar"]', 'Sci-Fi', 'Bonus Slots', '["gamble_feature", "free_spins", "stacked_wilds"]', 23.07, 1.40, 93.27, 0),
(34, 'Moonlit Fortune', 0, 26.58, 'Star4', '["central", "decoration", "entrance", "table_service"]', 'Fantasy', 'Bonus Slots', '["adjacent_pays", "expanding_wilds", "walking_wilds"]', 380.16, 1.32, 92.44, 0),
(35, 'Cleopatra\s Vault', 0, 68.29, 'Star46', '["decoration"]', 'Egyptian', 'Themed Slots', '["free_spins", "random_wilds", "vip_bonuses", "buy_feature"]', 428.72, 1.42, 86.27, 0),
(36, 'Fruit Frenzy', 0, 62.28, 'Star32', '["decoration"]', 'Fruit', 'Bonus Slots', '["megaways"]', 491.17, 1.98, 87.00, 0),
(37, 'Explorer\s Fortune', 1, 81.18, 'Star22', '["table_service", "bathroom", "entrance", "walkway_adjacent"]', 'Adventure', 'Megaways', '["gamble_feature", "pick_and_click", "adjacent_pays"]', 138.65, 0.81, 88.89, 0),
(38, 'Neptune\s Depths', 0, 84.88, 'Star17', '["bathroom", "table_service", "walkway_adjacent"]', 'Ocean', 'Bonus Slots', '["cascading_reels", "high_roller_spins"]', 395.39, 1.57, 87.68, 1),
(39, 'Jewel Quest', 1, 117.28, 'Star10', '["entrance", "decoration", "central"]', 'Fantasy', 'Classic Slots', '["stacked_wilds", "expanding_wilds", "gamble_feature"]', 66.32, 3.87, 91.72, 1),
(40, 'Jungle Treasures', 0, 26.49, 'Star9', '["decoration", "restaurant"]', 'Jungle', 'Video Slots', '["expanding_wilds", "cascading_reels", "high_roller_spins"]', 34.44, 0.07, 92.34, 1),
(41, 'Sunken Riches', 0, 80.77, 'Star19', '["entrance", "bar", "restaurant"]', 'Ocean', '3D Slots', '["re_spins", "themed_bonus_rounds"]', 254.37, 4.82, 96.53, 1),
(42, 'Fantasy Quest', 0, 112.37, 'Star25', '["decoration", "central", "bar", "walkway_adjacent"]', 'Fantasy', 'Bonus Slots', '["wild_symbols", "stacked_wilds", "pay_both_ways"]', 374.97, 0.58, 90.79, 0),
(43, 'Fruit Basket', 1, 83.12, 'Star47', '["restaurant", "walkway_adjacent", "bathroom"]', 'Fruit', 'Video Slots', '["bonus_rounds", "buy_feature", "sticky_wilds"]', 8.88, 2.90, 86.53, 1),
(44, 'Starlight Jackpot', 0, 108.96, 'Star21', '["walkway_adjacent", "bathroom", "central"]', 'Fantasy', 'Progressive Slots', '["scatter_symbols"]', 125.59, 2.51, 86.86, 0),
(45, 'Adventure Awaits', 0, 23.07, 'Star30', '["bar", "bathroom", "table_service"]', 'Adventure', 'Megaways', '["megaways", "vip_bonuses", "adjacent_pays", "re_spins"]', 271.41, 2.72, 90.03, 0),
(46, 'Galactic Gold', 1, 99.89, 'Star34', '["entrance"]', 'Sci-Fi', 'Megaways', '["seasonal_features"]', 206.26, 3.12, 97.93, 0),
(47, 'Pirate\s Cove', 0, 34.15, 'Star48', '["restaurant", "table_service", "central"]', 'Pirate', '3D Slots', '["gamble_feature", "re_spins", "scatter_symbols", "progressive_jackpot"]', 292.71, 4.82, 87.76, 0),
(48, 'Royal Jewels', 0, 85.39, 'Star43', '["entrance", "bar"]', 'Egyptian', 'Bonus Slots', '["colossal_symbols", "sticky_wilds", "high_roller_spins"]', 271.13, 0.89, 85.20, 1),
(49, 'Savannah Safari', 1, 38.29, 'Star38', '["walkway_adjacent"]', 'Jungle', 'Classic Slots', '["sticky_wilds", "adjacent_pays"]', 329.57, 1.39, 88.00, 1),
(50, 'Cleopatra\s Gold', 0, 114.93, 'Star42', '["decoration", "central", "bathroom"]', 'Egyptian', '3D Slots', '["wild_symbols"]', 444.58, 1.79, 87.94, 1),
