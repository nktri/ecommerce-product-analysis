SELECT DISTINCT event_type FROM ecommerce;

SELECT event_type, COUNT(*) 
FROM ecommerce 
GROUP BY event_type;

SELECT COUNT(DISTINCT user_id) 
FROM ecommerce;

SELECT 
    COUNT(DISTINCT CASE WHEN event_type = 'view' THEN user_id END) as view_users,
    COUNT(DISTINCT CASE WHEN event_type = 'cart' THEN user_id END) as cart_users,
    COUNT(DISTINCT CASE WHEN event_type = 'purchase' THEN user_id END) as purchase_users
FROM ecommerce;
