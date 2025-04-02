import pandas as pd

file = '../data/movies.csv'
df = pd.read_csv(f'{file}')

df['genres'] = df['genres'].apply(lambda x: [genre.strip() for genre in x.split(',')] if pd.notna(x) else [])

all_genres = [genre for genres in df['genres'] for genre in genres]

unique_genres = sorted(set(all_genres))

print(f'{file} 파일의 전체 장르 목록:')
print(unique_genres)