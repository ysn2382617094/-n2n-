.class Lcom/umeng/socialize/handler/UMFacebookHandler$6;
.super Ljava/lang/Object;
.source "UMFacebookHandler.java"

# interfaces
.implements Lcom/umeng/socialize/UMAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/handler/UMFacebookHandler;->share(Lcom/umeng/socialize/ShareContent;Lcom/umeng/socialize/UMShareListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/socialize/handler/UMFacebookHandler;

.field final synthetic val$content:Lcom/umeng/socialize/ShareContent;

.field final synthetic val$listener:Lcom/umeng/socialize/UMShareListener;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/handler/UMFacebookHandler;Lcom/umeng/socialize/ShareContent;Lcom/umeng/socialize/UMShareListener;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/umeng/socialize/handler/UMFacebookHandler$6;->this$0:Lcom/umeng/socialize/handler/UMFacebookHandler;

    iput-object p2, p0, Lcom/umeng/socialize/handler/UMFacebookHandler$6;->val$content:Lcom/umeng/socialize/ShareContent;

    iput-object p3, p0, Lcom/umeng/socialize/handler/UMFacebookHandler$6;->val$listener:Lcom/umeng/socialize/UMShareListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V
    .locals 0

    .line 341
    iget-object p1, p0, Lcom/umeng/socialize/handler/UMFacebookHandler$6;->val$listener:Lcom/umeng/socialize/UMShareListener;

    sget-object p2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->FACEBOOK:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {p1, p2}, Lcom/umeng/socialize/UMShareListener;->onCancel(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    return-void
.end method

.method public onComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/umeng/socialize/bean/SHARE_MEDIA;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 331
    iget-object p1, p0, Lcom/umeng/socialize/handler/UMFacebookHandler$6;->this$0:Lcom/umeng/socialize/handler/UMFacebookHandler;

    new-instance p2, Lcom/umeng/facebook/media/FacebookShareContent;

    iget-object p3, p0, Lcom/umeng/socialize/handler/UMFacebookHandler$6;->val$content:Lcom/umeng/socialize/ShareContent;

    invoke-direct {p2, p3}, Lcom/umeng/facebook/media/FacebookShareContent;-><init>(Lcom/umeng/socialize/ShareContent;)V

    iget-object p3, p0, Lcom/umeng/socialize/handler/UMFacebookHandler$6;->val$listener:Lcom/umeng/socialize/UMShareListener;

    invoke-virtual {p1, p2, p3}, Lcom/umeng/socialize/handler/UMFacebookHandler;->shareTo(Lcom/umeng/facebook/media/FacebookShareContent;Lcom/umeng/socialize/UMShareListener;)Z

    return-void
.end method

.method public onError(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILjava/lang/Throwable;)V
    .locals 3

    .line 336
    iget-object p1, p0, Lcom/umeng/socialize/handler/UMFacebookHandler$6;->val$listener:Lcom/umeng/socialize/UMShareListener;

    sget-object p2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->FACEBOOK:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/umeng/socialize/bean/UmengErrorCode;->AuthorizeFailed:Lcom/umeng/socialize/bean/UmengErrorCode;

    invoke-virtual {v2}, Lcom/umeng/socialize/bean/UmengErrorCode;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2, v0}, Lcom/umeng/socialize/UMShareListener;->onError(Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onStart(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 0

    return-void
.end method
