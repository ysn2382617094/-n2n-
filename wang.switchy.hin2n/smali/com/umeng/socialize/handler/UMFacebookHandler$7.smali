.class Lcom/umeng/socialize/handler/UMFacebookHandler$7;
.super Ljava/lang/Object;
.source "UMFacebookHandler.java"

# interfaces
.implements Lcom/umeng/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/handler/UMFacebookHandler;->shareTo(Lcom/umeng/facebook/media/FacebookShareContent;Lcom/umeng/socialize/UMShareListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/umeng/facebook/FacebookCallback<",
        "Lcom/umeng/facebook/share/Sharer$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/socialize/handler/UMFacebookHandler;

.field final synthetic val$listener:Lcom/umeng/socialize/UMShareListener;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/handler/UMFacebookHandler;Lcom/umeng/socialize/UMShareListener;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/umeng/socialize/handler/UMFacebookHandler$7;->this$0:Lcom/umeng/socialize/handler/UMFacebookHandler;

    iput-object p2, p0, Lcom/umeng/socialize/handler/UMFacebookHandler$7;->val$listener:Lcom/umeng/socialize/UMShareListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .line 372
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMFacebookHandler$7;->val$listener:Lcom/umeng/socialize/UMShareListener;

    iget-object v1, p0, Lcom/umeng/socialize/handler/UMFacebookHandler$7;->this$0:Lcom/umeng/socialize/handler/UMFacebookHandler;

    invoke-static {v1}, Lcom/umeng/socialize/handler/UMFacebookHandler;->access$300(Lcom/umeng/socialize/handler/UMFacebookHandler;)Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/umeng/socialize/UMShareListener;->onCancel(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    return-void
.end method

.method public onError(Lcom/umeng/facebook/FacebookException;)V
    .locals 5

    .line 377
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMFacebookHandler$7;->val$listener:Lcom/umeng/socialize/UMShareListener;

    iget-object v1, p0, Lcom/umeng/socialize/handler/UMFacebookHandler$7;->this$0:Lcom/umeng/socialize/handler/UMFacebookHandler;

    invoke-static {v1}, Lcom/umeng/socialize/handler/UMFacebookHandler;->access$300(Lcom/umeng/socialize/handler/UMFacebookHandler;)Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/umeng/socialize/bean/UmengErrorCode;->ShareFailed:Lcom/umeng/socialize/bean/UmengErrorCode;

    invoke-virtual {v4}, Lcom/umeng/socialize/bean/UmengErrorCode;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/umeng/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/UMShareListener;->onError(Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSuccess(Lcom/umeng/facebook/share/Sharer$Result;)V
    .locals 1

    .line 367
    iget-object p1, p0, Lcom/umeng/socialize/handler/UMFacebookHandler$7;->val$listener:Lcom/umeng/socialize/UMShareListener;

    iget-object v0, p0, Lcom/umeng/socialize/handler/UMFacebookHandler$7;->this$0:Lcom/umeng/socialize/handler/UMFacebookHandler;

    invoke-static {v0}, Lcom/umeng/socialize/handler/UMFacebookHandler;->access$300(Lcom/umeng/socialize/handler/UMFacebookHandler;)Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/umeng/socialize/UMShareListener;->onResult(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 364
    check-cast p1, Lcom/umeng/facebook/share/Sharer$Result;

    invoke-virtual {p0, p1}, Lcom/umeng/socialize/handler/UMFacebookHandler$7;->onSuccess(Lcom/umeng/facebook/share/Sharer$Result;)V

    return-void
.end method
