import pandas as pd

# type = 'movies'
type = 'tvshows'
df = pd.read_csv(f'../../data/{type}.csv')
df['genres'] = df['genres'].str.split(',')

df_exploded = df.explode('genres')
df_exploded['genres'] = df_exploded['genres'].str.strip()

metadata = df_exploded[['show_id', 'genres']]

metadata.to_csv(f'../../data/metadata_{type}.csv', index=False)