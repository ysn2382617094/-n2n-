.class Lcom/umeng/socialize/handler/UMFacebookHandler$8;
.super Ljava/lang/Object;
.source "UMFacebookHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/handler/UMFacebookHandler;->shareTo(Lcom/umeng/facebook/media/FacebookShareContent;Lcom/umeng/socialize/UMShareListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/socialize/handler/UMFacebookHandler;

.field final synthetic val$listener:Lcom/umeng/socialize/UMShareListener;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/handler/UMFacebookHandler;Lcom/umeng/socialize/UMShareListener;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/umeng/socialize/handler/UMFacebookHandler$8;->this$0:Lcom/umeng/socialize/handler/UMFacebookHandler;

    iput-object p2, p0, Lcom/umeng/socialize/handler/UMFacebookHandler$8;->val$listener:Lcom/umeng/socialize/UMShareListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 392
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMFacebookHandler$8;->val$listener:Lcom/umeng/socialize/UMShareListener;

    iget-object v1, p0, Lcom/umeng/socialize/handler/UMFacebookHandler$8;->this$0:Lcom/umeng/socialize/handler/UMFacebookHandler;

    invoke-static {v1}, Lcom/umeng/socialize/handler/UMFacebookHandler;->access$300(Lcom/umeng/socialize/handler/UMFacebookHandler;)Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/umeng/socialize/bean/UmengErrorCode;->ShareDataTypeIllegal:Lcom/umeng/socialize/bean/UmengErrorCode;

    invoke-virtual {v4}, Lcom/umeng/socialize/bean/UmengErrorCode;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "image_url_video"

    const/4 v5, 0x1

    invoke-static {v5, v4}, Lcom/umeng/socialize/utils/UmengText;->supportStyle(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/UMShareListener;->onError(Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/Throwable;)V

    return-void
.end method
