import pandas as pd
import unicodedata

# data = './data/movies.csv'
data = './data/tvshows.csv'
df = pd.read_csv(f"{data}")

def remove_accents(text):
    if isinstance(text, str):
        nfkd_form = unicodedata.normalize('NFKD', text)
        return "".join([c for c in nfkd_form if not unicodedata.combining(c)])
    return text

df = df.applymap(remove_accents)

df.to_csv(f"{data}", index=False)