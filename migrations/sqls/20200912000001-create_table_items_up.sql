CREATE TABLE items (
  item_id uuid NOT NULL PRIMARY KEY DEFAULT gen_random_uuid(),
  assigned_to uuid NOT NULL,
  title text NOT NULL,
  description text,
  done boolean DEFAULT FALSE,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);
