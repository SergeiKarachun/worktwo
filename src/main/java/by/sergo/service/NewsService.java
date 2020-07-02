package by.sergo.service;

import by.sergo.models.NewsRecord;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class NewsService {

    static private NewsService instance = new NewsService();


    Map<String, List<NewsRecord>> news = new HashMap<>();

    public NewsService(){
        news.put("Sergo", new ArrayList<NewsRecord>());

        news.get("Sergo").add(new NewsRecord("images/gallery-biker.jpg", "First news First news First news First news First news First news First news First news First news First news First news First news First news First news First news ", "Boardman launches new aggressively-priced 2021 road and gravel bike range"));
        news.get("Sergo").add(new NewsRecord("images/gallery-biker2.jpg", "Second news Second news Second news Second news Second news Second news Second news Second news Second news Second news Second news ", "The Second news record"));
        news.get("Sergo").add(new NewsRecord("images/gallery-boys.jpg", "Third news Third news Third news Third news Third news Third news Third news Third news Third news Third news Third news Third news Third news Third news Third news Third news Third news Third news ", "The Third news record"));
        news.get("Sergo").add(new NewsRecord("images/gallery-girls.jpg", "Fifth news Fifth news Fifth news Fifth news Fifth news Fifth news Fifth news Fifth news Fifth news Fifth news Fifth news Fifth news Fifth news Fifth news Fifth news Fifth news Fifth news ", "The Fourth news record"));
        news.get("Sergo").add(new NewsRecord("images/gallery-family.jpg", "Fifth news Fifth news Fifth news Fifth news Fifth news Fifth news Fifth news Fifth news Fifth news Fifth news Fifth news Fifth news Fifth news Fifth news Fifth news ", "The fifth news record"));
        news.get("Sergo").add(new NewsRecord("images/gallery-family2.jpg", "Sixth news Sixth news Sixth news Sixth news Sixth news Sixth news Sixth news Sixth news Sixth news Sixth news Sixth news Sixth news Sixth news Sixth news ", "The sixth news record"));
        new NewsRecord();
    }

    public NewsService(Map<String, List<NewsRecord>> news) {

        this.news = news;
    }

    public List<NewsRecord> getNews(String userName) {
        return news.get(userName);
    }

    public static NewsService getInstance() {
        return instance;
    }
}
