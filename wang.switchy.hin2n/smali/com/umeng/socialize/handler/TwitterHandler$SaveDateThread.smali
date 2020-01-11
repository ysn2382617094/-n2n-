.class Lcom/umeng/socialize/handler/TwitterHandler$SaveDateThread;
.super Ljava/lang/Object;
.source "TwitterHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/handler/TwitterHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SaveDateThread"
.end annotation


# instance fields
.field oauthVerifier:Ljava/lang/String;

.field final synthetic this$0:Lcom/umeng/socialize/handler/TwitterHandler;


# direct methods
.method public constructor <init>(Lcom/umeng/socialize/handler/TwitterHandler;Ljava/lang/String;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/umeng/socialize/handler/TwitterHandler$SaveDateThread;->this$0:Lcom/umeng/socialize/handler/TwitterHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p2, p0, Lcom/umeng/socialize/handler/TwitterHandler$SaveDateThread;->oauthVerifier:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/umeng/socialize/handler/TwitterHandler$SaveDateThread;->this$0:Lcom/umeng/socialize/handler/TwitterHandler;

    invoke-static {v0}, Lcom/umeng/socialize/handler/TwitterHandler;->access$100(Lcom/umeng/socialize/handler/TwitterHandler;)Ltwitter4j/Twitter;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/handler/TwitterHandler$SaveDateThread;->this$0:Lcom/umeng/socialize/handler/TwitterHandler;

    invoke-static {v1}, Lcom/umeng/socialize/handler/TwitterHandler;->access$000(Lcom/umeng/socialize/handler/TwitterHandler;)Ltwitter4j/auth/RequestToken;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/socialize/handler/TwitterHandler$SaveDateThread;->oauthVerifier:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ltwitter4j/Twitter;->getOAuthAccessToken(Ltwitter4j/auth/RequestToken;Ljava/lang/String;)Ltwitter4j/auth/AccessToken;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Ltwitter4j/auth/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-virtual {v0}, Ltwitter4j/auth/AccessToken;->getTokenSecret()Ljava/lang/String;

    move-result-object v2

    .line 171
    iget-object v3, p0, Lcom/umeng/socialize/handler/TwitterHandler$SaveDateThread;->this$0:Lcom/umeng/socialize/handler/TwitterHandler;

    invoke-static {v3}, Lcom/umeng/socialize/handler/TwitterHandler;->access$100(Lcom/umeng/socialize/handler/TwitterHandler;)Ltwitter4j/Twitter;

    move-result-object v3

    invoke-interface {v3, v0}, Ltwitter4j/Twitter;->setOAuthAccessToken(Ltwitter4j/auth/AccessToken;)V

    .line 172
    invoke-virtual {v0}, Ltwitter4j/auth/AccessToken;->getUserId()J

    move-result-wide v3

    .line 173
    iget-object v5, p0, Lcom/umeng/socialize/handler/TwitterHandler$SaveDateThread;->this$0:Lcom/umeng/socialize/handler/TwitterHandler;

    invoke-static {v5}, Lcom/umeng/socialize/handler/TwitterHandler;->access$200(Lcom/umeng/socialize/handler/TwitterHandler;)Lcom/umeng/socialize/handler/TwitterPreferences;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v1, v2}, Lcom/umeng/socialize/handler/TwitterPreferences;->setAuthData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/socialize/handler/TwitterPreferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/umeng/socialize/handler/TwitterPreferences;->commit()V

    .line 174
    iget-object v5, p0, Lcom/umeng/socialize/handler/TwitterHandler$SaveDateThread;->this$0:Lcom/umeng/socialize/handler/TwitterHandler;

    invoke-static {v5}, Lcom/umeng/socialize/handler/TwitterHandler;->access$100(Lcom/umeng/socialize/handler/TwitterHandler;)Ltwitter4j/Twitter;

    move-result-object v5

    invoke-interface {v5, v3, v4}, Ltwitter4j/Twitter;->showUser(J)Ltwitter4j/User;

    move-result-object v5

    .line 180
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v7, "usid"

    .line 181
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "uid"

    .line 182
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "access_token"

    .line 183
    invoke-interface {v6, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    invoke-interface {v6, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "access_token_secret"

    .line 185
    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "username"

    .line 186
    invoke-virtual {v0}, Ltwitter4j/auth/AccessToken;->getScreenName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "name"

    .line 187
    invoke-virtual {v0}, Ltwitter4j/auth/AccessToken;->getScreenName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "iconurl"

    .line 188
    invoke-interface {v5}, Ltwitter4j/User;->getProfileBackgroundImageURL()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "descroption"

    .line 189
    invoke-interface {v5}, Ltwitter4j/User;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "email"

    .line 190
    invoke-interface {v5}, Ltwitter4j/User;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "location"

    .line 191
    invoke-interface {v5}, Ltwitter4j/User;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "aid"

    .line 192
    iget-object v1, p0, Lcom/umeng/socialize/handler/TwitterHandler$SaveDateThread;->this$0:Lcom/umeng/socialize/handler/TwitterHandler;

    invoke-static {v1}, Lcom/umeng/socialize/handler/TwitterHandler;->access$300(Lcom/umeng/socialize/handler/TwitterHandler;)Lcom/umeng/socialize/PlatformConfig$APPIDPlatform;

    move-result-object v1

    iget-object v1, v1, Lcom/umeng/socialize/PlatformConfig$APPIDPlatform;->appId:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "as"

    .line 193
    iget-object v1, p0, Lcom/umeng/socialize/handler/TwitterHandler$SaveDateThread;->this$0:Lcom/umeng/socialize/handler/TwitterHandler;

    invoke-static {v1}, Lcom/umeng/socialize/handler/TwitterHandler;->access$300(Lcom/umeng/socialize/handler/TwitterHandler;)Lcom/umeng/socialize/PlatformConfig$APPIDPlatform;

    move-result-object v1

    iget-object v1, v1, Lcom/umeng/socialize/PlatformConfig$APPIDPlatform;->appkey:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    new-instance v0, Lcom/umeng/socialize/handler/TwitterHandler$SaveDateThread$1;

    invoke-direct {v0, p0, v6}, Lcom/umeng/socialize/handler/TwitterHandler$SaveDateThread$1;-><init>(Lcom/umeng/socialize/handler/TwitterHandler$SaveDateThread;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/umeng/socialize/common/QueuedWork;->runInMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
