import pandas as pd

# CSV 불러오기
df = pd.read_csv('../data/movies.csv')

# NaN 처리 및 장르 분리
df['genres'] = df['genres'].fillna('').apply(lambda x: [g.strip() for g in x.split(',') if g.strip()])

# explode로 장르 펼치기
df_exploded = df.explode('genres')

# 상위 5개 장르만 필터링
# top5 = ['Drama', 'Comedy', 'Thriller', 'Action', 'Romance']
all_genre = ['Action', 'Adventure', 'Animation', 'Comedy', 'Crime', 'Documentary', 'Drama', 'Family', 'Fantasy', 'History', 'Horror', 'Music', 'Mystery', 'Romance', 'Science Fiction', 'TV Movie', 'Thriller', 'War', 'Western']

# df_top5 = df_exploded[df_exploded['genres'].isin(top5)]
df_all = df_exploded[df_exploded['genres'].isin(all_genre)]

# 그룹별 통계 집계
result = df_all.groupby('genres').agg(
    count=('genres', 'count'),
    avg_rating=('rating', 'mean'),
    min_popularity=('popularity', 'min'),
    max_popularity=('popularity', 'max'),
    avg_popularity=('popularity', 'mean'),
    min_vote_average=('vote_average', 'mean'),
    max_vote_average=('vote_average', 'max'),
    avg_vote_average=('vote_average', 'mean'),
    avg_budget=('budget', 'mean'),
    avg_revenue=('revenue', 'mean')
).sort_values(by='count', ascending=False)

result['revenue_to_budget_ratio'] = result['avg_revenue'] / result['avg_budget']

# 결과 출력
print(result)

# 또는 CSV로 저장
result.to_csv("../results/all_genres_stats.csv")