package org.example.mealisallyouneed.model.vo;

public record Anime(String uuid, String title, String description, String createdAt, Integer votes, String imageUrl) {

    public String getTitle() {
        return title();
    }

    public String getDescription() {
        return description();
    }

    public String getCreatedAt() {
        return createdAt();
    }

    public Integer getVotes() {
        return votes();
    }

    public String getUuid() {
        return uuid();
    }

    public String getImageUrl() {
        return imageUrl();
    }
}
