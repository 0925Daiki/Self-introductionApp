# README

# DB設計

## users table

| Column             | Type     | Options                   |
|--------------------|----------|---------------------------|
| name               | string   | null: false               |
| email              | string   | null: false, unique: true |
| encrypted_password | string   | null: false               |

### アソシエーション
- has_one :introduction
- has_many :questions
- has_many :answers


## introductions table

| Column             | Type          | Options                        |
|--------------------|---------------|--------------------------------|
| nickname           | string        | null: false                    |
| birthday           | date          | null: false                    |
| age                | string        | null: false                    |
| birthplace         | string        | null: false                    |
| personality        | string        | null: false                    |
| hobby              | string        | null: false                    |
| skill              | string        | null: false                    |
| music              | string        | null: false                    |
| food               | string        | null: false                    |
| study_abroad       | text          | null: false                    |
| comment            | text          | null: false                    |
| user               | references    | null: false, foreign_key: true |

### アソシエーション
- belongs_to :user
- has_many :question


## questions table
| Column       | Type       | Options           |
|--------------|------------|-------------------|
| text         | text       |                   |
| user         | references | foreign_key: true |
| introduction | references | foreign_key: true |

### アソシエーション
- belongs_to :user
- belongs_to :introduction
- has_many :comments


## comments table
| Column     | Type       | Options           |
|------------|------------|-------------------|
| text       | text       |                   |
| question   | references | foreign_key: true |

### アソシエーション
- belongs_to :user
- has_many :questions

