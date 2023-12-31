DROP TABLE IF EXISTS contributions CASCADE;
CREATE TABLE contributions(
  id SERIAL PRIMARY KEY NOT NULL,
  story_id INTEGER REFERENCES stories(id) ON DELETE CASCADE,
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  contribution_content TEXT NOT NULL,
  up_vote SMALLINT DEFAULT 0,
  created_at TIMESTAMP DEFAULT NOW(),
  added_to_story BOOLEAN DEFAULT false
)
