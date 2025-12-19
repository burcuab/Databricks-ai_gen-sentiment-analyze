SELECT 
  review_date,
  review, 
  ai_analyze_sentiment(review) as sentiment,
  ai_gen('You are a customer support specialist. Answer the customer reviews in 50 words: ' || review) as answer
from 
  samples.bakehouse.media_customer_reviews
