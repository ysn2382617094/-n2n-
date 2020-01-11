.class Lcom/umeng/qq/handler/UmengQZoneHandler$2;
.super Ljava/lang/Object;
.source "UmengQZoneHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/qq/handler/UmengQZoneHandler;->share(Lcom/umeng/socialize/ShareContent;Lcom/umeng/socialize/UMShareListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/qq/handler/UmengQZoneHandler;

.field final synthetic val$listener:Lcom/umeng/socialize/UMShareListener;


# direct methods
.method constructor <init>(Lcom/umeng/qq/handler/UmengQZoneHandler;Lcom/umeng/socialize/UMShareListener;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/umeng/qq/handler/UmengQZoneHandler$2;->this$0:Lcom/umeng/qq/handler/UmengQZoneHandler;

    iput-object p2, p0, Lcom/umeng/qq/handler/UmengQZoneHandler$2;->val$listener:Lcom/umeng/socialize/UMShareListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 65
    iget-object v0, p0, Lcom/umeng/qq/handler/UmengQZoneHandler$2;->this$0:Lcom/umeng/qq/handler/UmengQZoneHandler;

    iget-object v1, p0, Lcom/umeng/qq/handler/UmengQZoneHandler$2;->val$listener:Lcom/umeng/socialize/UMShareListener;

    invoke-virtual {v0, v1}, Lcom/umeng/qq/handler/UmengQZoneHandler;->getShareListener(Lcom/umeng/socialize/UMShareListener;)Lcom/umeng/socialize/UMShareListener;

    move-result-object v0

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QZONE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    new-instance v2, Ljava/lang/Throwable;

    sget-object v3, Lcom/umeng/socialize/bean/UmengErrorCode;->NotInstall:Lcom/umeng/socialize/bean/UmengErrorCode;

    invoke-virtual {v3}, Lcom/umeng/socialize/bean/UmengErrorCode;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/UMShareListener;->onError(Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/Throwable;)V

    return-void
.end method
