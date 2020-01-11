.class Lcom/umeng/socialize/handler/UMFacebookHandler$3;
.super Ljava/lang/Object;
.source "UMFacebookHandler.java"

# interfaces
.implements Lcom/umeng/facebook/internal/Utility$GraphMeRequestWithCacheCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/handler/UMFacebookHandler;->fetchUserInfo(Lcom/umeng/facebook/AccessToken;Lcom/umeng/socialize/UMAuthListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/socialize/handler/UMFacebookHandler;

.field final synthetic val$listener:Lcom/umeng/socialize/UMAuthListener;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/handler/UMFacebookHandler;Lcom/umeng/socialize/UMAuthListener;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/umeng/socialize/handler/UMFacebookHandler$3;->this$0:Lcom/umeng/socialize/handler/UMFacebookHandler;

    iput-object p2, p0, Lcom/umeng/socialize/handler/UMFacebookHandler$3;->val$listener:Lcom/umeng/socialize/UMAuthListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/umeng/facebook/FacebookException;)V
    .locals 5

    .line 207
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMFacebookHandler$3;->val$listener:Lcom/umeng/socialize/UMAuthListener;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->FACEBOOK:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    new-instance v2, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/umeng/socialize/bean/UmengErrorCode;->RequestForUserProfileFailed:Lcom/umeng/socialize/bean/UmengErrorCode;

    .line 208
    invoke-virtual {v4}, Lcom/umeng/socialize/bean/UmengErrorCode;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/umeng/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 207
    invoke-interface {v0, v1, p1, v2}, Lcom/umeng/socialize/UMAuthListener;->onError(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILjava/lang/Throwable;)V

    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 9

    const-string v0, "id"

    .line 182
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 184
    iget-object p1, p0, Lcom/umeng/socialize/handler/UMFacebookHandler$3;->val$listener:Lcom/umeng/socialize/UMAuthListener;

    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->FACEBOOK:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/umeng/socialize/bean/UmengErrorCode;->RequestForUserProfileFailed:Lcom/umeng/socialize/bean/UmengErrorCode;

    .line 185
    invoke-virtual {v4}, Lcom/umeng/socialize/bean/UmengErrorCode;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/umeng/socialize/utils/UmengText$AUTH;->DATA_EMPTY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 184
    invoke-interface {p1, v0, v1, v2}, Lcom/umeng/socialize/UMAuthListener;->onError(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILjava/lang/Throwable;)V

    return-void

    :cond_0
    const-string v0, "link"

    .line 188
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    new-instance v8, Lcom/umeng/facebook/Profile;

    const-string v1, "first_name"

    .line 191
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "middle_name"

    .line 192
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "last_name"

    .line 193
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "name"

    .line 194
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v0, :cond_1

    .line 195
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    move-object v7, p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/umeng/facebook/Profile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 201
    iget-object p1, p0, Lcom/umeng/socialize/handler/UMFacebookHandler$3;->this$0:Lcom/umeng/socialize/handler/UMFacebookHandler;

    iget-object v0, p0, Lcom/umeng/socialize/handler/UMFacebookHandler$3;->val$listener:Lcom/umeng/socialize/UMAuthListener;

    invoke-static {p1, v8, v0}, Lcom/umeng/socialize/handler/UMFacebookHandler;->access$100(Lcom/umeng/socialize/handler/UMFacebookHandler;Lcom/umeng/facebook/Profile;Lcom/umeng/socialize/UMAuthListener;)V

    return-void
.end method
