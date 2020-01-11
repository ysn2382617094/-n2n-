.class Lcom/umeng/socialize/handler/UMGooglePlusHandler$1;
.super Ljava/lang/Object;
.source "UMGooglePlusHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/handler/UMGooglePlusHandler;->share(Lcom/umeng/socialize/ShareContent;Lcom/umeng/socialize/UMShareListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/socialize/handler/UMGooglePlusHandler;

.field final synthetic val$listener:Lcom/umeng/socialize/UMShareListener;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/handler/UMGooglePlusHandler;Lcom/umeng/socialize/UMShareListener;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/umeng/socialize/handler/UMGooglePlusHandler$1;->this$0:Lcom/umeng/socialize/handler/UMGooglePlusHandler;

    iput-object p2, p0, Lcom/umeng/socialize/handler/UMGooglePlusHandler$1;->val$listener:Lcom/umeng/socialize/UMShareListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 61
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMGooglePlusHandler$1;->val$listener:Lcom/umeng/socialize/UMShareListener;

    iget-object v1, p0, Lcom/umeng/socialize/handler/UMGooglePlusHandler$1;->this$0:Lcom/umeng/socialize/handler/UMGooglePlusHandler;

    invoke-virtual {v1}, Lcom/umeng/socialize/handler/UMGooglePlusHandler;->getConfig()Lcom/umeng/socialize/PlatformConfig$Platform;

    move-result-object v1

    invoke-interface {v1}, Lcom/umeng/socialize/PlatformConfig$Platform;->getName()Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    sget-object v3, Lcom/umeng/socialize/bean/UmengErrorCode;->NotInstall:Lcom/umeng/socialize/bean/UmengErrorCode;

    invoke-virtual {v3}, Lcom/umeng/socialize/bean/UmengErrorCode;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/UMShareListener;->onError(Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/Throwable;)V

    return-void
.end method
