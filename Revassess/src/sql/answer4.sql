SELECT app_user.username, category.name, flashcard.question, flashcard.answer 
FROM app_user, category, flashcard, study_set, study_set_card
WHERE study_set_card.study_set_id = 4 AND study_set.study_set_id = 4
AND app_user.user_id = study_set.owner_id 
AND flashcard.flashcard_id = study_set_card.flashcard_id;