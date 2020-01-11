.class public final Ltwitter4j/JSONObjectType;
.super Ljava/lang/Object;
.source "JSONObjectType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltwitter4j/JSONObjectType$Type;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static determine(Ltwitter4j/JSONObject;)Ltwitter4j/JSONObjectType$Type;
    .locals 1

    const-string v0, "sender"

    .line 72
    invoke-virtual {p0, v0}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    sget-object p0, Ltwitter4j/JSONObjectType$Type;->SENDER:Ltwitter4j/JSONObjectType$Type;

    return-object p0

    :cond_0
    const-string v0, "text"

    .line 74
    invoke-virtual {p0, v0}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    sget-object p0, Ltwitter4j/JSONObjectType$Type;->STATUS:Ltwitter4j/JSONObjectType$Type;

    return-object p0

    :cond_1
    const-string v0, "direct_message"

    .line 76
    invoke-virtual {p0, v0}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 77
    sget-object p0, Ltwitter4j/JSONObjectType$Type;->DIRECT_MESSAGE:Ltwitter4j/JSONObjectType$Type;

    return-object p0

    :cond_2
    const-string v0, "delete"

    .line 78
    invoke-virtual {p0, v0}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 79
    sget-object p0, Ltwitter4j/JSONObjectType$Type;->DELETE:Ltwitter4j/JSONObjectType$Type;

    return-object p0

    :cond_3
    const-string v0, "limit"

    .line 80
    invoke-virtual {p0, v0}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 81
    sget-object p0, Ltwitter4j/JSONObjectType$Type;->LIMIT:Ltwitter4j/JSONObjectType$Type;

    return-object p0

    :cond_4
    const-string v0, "warning"

    .line 82
    invoke-virtual {p0, v0}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 83
    sget-object p0, Ltwitter4j/JSONObjectType$Type;->STALL_WARNING:Ltwitter4j/JSONObjectType$Type;

    return-object p0

    :cond_5
    const-string v0, "scrub_geo"

    .line 84
    invoke-virtual {p0, v0}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 85
    sget-object p0, Ltwitter4j/JSONObjectType$Type;->SCRUB_GEO:Ltwitter4j/JSONObjectType$Type;

    return-object p0

    :cond_6
    const-string v0, "friends"

    .line 86
    invoke-virtual {p0, v0}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 87
    sget-object p0, Ltwitter4j/JSONObjectType$Type;->FRIENDS:Ltwitter4j/JSONObjectType$Type;

    return-object p0

    :cond_7
    const-string v0, "event"

    .line 88
    invoke-virtual {p0, v0}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    :try_start_0
    const-string v0, "event"

    .line 91
    invoke-virtual {p0, v0}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "favorite"

    .line 92
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 93
    sget-object p0, Ltwitter4j/JSONObjectType$Type;->FAVORITE:Ltwitter4j/JSONObjectType$Type;

    return-object p0

    :cond_8
    const-string v0, "unfavorite"

    .line 94
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 95
    sget-object p0, Ltwitter4j/JSONObjectType$Type;->UNFAVORITE:Ltwitter4j/JSONObjectType$Type;

    return-object p0

    :cond_9
    const-string v0, "follow"

    .line 96
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 97
    sget-object p0, Ltwitter4j/JSONObjectType$Type;->FOLLOW:Ltwitter4j/JSONObjectType$Type;

    return-object p0

    :cond_a
    const-string v0, "unfollow"

    .line 98
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 99
    sget-object p0, Ltwitter4j/JSONObjectType$Type;->UNFOLLOW:Ltwitter4j/JSONObjectType$Type;

    return-object p0

    :cond_b
    const-string v0, "list"

    .line 100
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "list_member_added"

    .line 101
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 102
    sget-object p0, Ltwitter4j/JSONObjectType$Type;->USER_LIST_MEMBER_ADDED:Ltwitter4j/JSONObjectType$Type;

    return-object p0

    :cond_c
    const-string v0, "list_member_removed"

    .line 103
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 104
    sget-object p0, Ltwitter4j/JSONObjectType$Type;->USER_LIST_MEMBER_DELETED:Ltwitter4j/JSONObjectType$Type;

    return-object p0

    :cond_d
    const-string v0, "list_user_subscribed"

    .line 105
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 106
    sget-object p0, Ltwitter4j/JSONObjectType$Type;->USER_LIST_SUBSCRIBED:Ltwitter4j/JSONObjectType$Type;

    return-object p0

    :cond_e
    const-string v0, "list_user_unsubscribed"

    .line 107
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 108
    sget-object p0, Ltwitter4j/JSONObjectType$Type;->USER_LIST_UNSUBSCRIBED:Ltwitter4j/JSONObjectType$Type;

    return-object p0

    :cond_f
    const-string v0, "list_created"

    .line 109
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 110
    sget-object p0, Ltwitter4j/JSONObjectType$Type;->USER_LIST_CREATED:Ltwitter4j/JSONObjectType$Type;

    return-object p0

    :cond_10
    const-string v0, "list_updated"

    .line 111
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 112
    sget-object p0, Ltwitter4j/JSONObjectType$Type;->USER_LIST_UPDATED:Ltwitter4j/JSONObjectType$Type;

    return-object p0

    :cond_11
    const-string v0, "list_destroyed"

    .line 113
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    .line 114
    sget-object p0, Ltwitter4j/JSONObjectType$Type;->USER_LIST_DESTROYED:Ltwitter4j/JSONObjectType$Type;

    return-object p0

    :cond_12
    const-string v0, "user_update"

    .line 116
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 117
    sget-object p0, Ltwitter4j/JSONObjectType$Type;->USER_UPDATE:Ltwitter4j/JSONObjectType$Type;

    return-object p0

    :cond_13
    const-string v0, "user_delete"

    .line 118
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 119
    sget-object p0, Ltwitter4j/JSONObjectType$Type;->USER_DELETE:Ltwitter4j/JSONObjectType$Type;

    return-object p0

    :cond_14
    const-string v0, "user_suspend"

    .line 120
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 121
    sget-object p0, Ltwitter4j/JSONObjectType$Type;->USER_SUSPEND:Ltwitter4j/JSONObjectType$Type;

    return-object p0

    :cond_15
    const-string v0, "block"

    .line 122
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 123
    sget-object p0, Ltwitter4j/JSONObjectType$Type;->BLOCK:Ltwitter4j/JSONObjectType$Type;

    return-object p0

    :cond_16
    const-string v0, "unblock"

    .line 124
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 125
    sget-object p0, Ltwitter4j/JSONObjectType$Type;->UNBLOCK:Ltwitter4j/JSONObjectType$Type;

    return-object p0

    :cond_17
    const-string v0, "retweeted_retweet"

    .line 126
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 127
    sget-object p0, Ltwitter4j/JSONObjectType$Type;->RETWEETED_RETWEET:Ltwitter4j/JSONObjectType$Type;

    return-object p0

    :cond_18
    const-string v0, "favorited_retweet"

    .line 128
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 129
    sget-object p0, Ltwitter4j/JSONObjectType$Type;->FAVORITED_RETWEET:Ltwitter4j/JSONObjectType$Type;

    return-object p0

    :cond_19
    const-string v0, "quoted_tweet"

    .line 130
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    .line 131
    sget-object p0, Ltwitter4j/JSONObjectType$Type;->QUOTED_TWEET:Ltwitter4j/JSONObjectType$Type;
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_1a
    const-string v0, "disconnect"

    .line 136
    invoke-virtual {p0, v0}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1b

    .line 137
    sget-object p0, Ltwitter4j/JSONObjectType$Type;->DISCONNECTION:Ltwitter4j/JSONObjectType$Type;

    return-object p0

    .line 139
    :catch_0
    :cond_1b
    sget-object p0, Ltwitter4j/JSONObjectType$Type;->UNKNOWN:Ltwitter4j/JSONObjectType$Type;

    return-object p0
.end method
