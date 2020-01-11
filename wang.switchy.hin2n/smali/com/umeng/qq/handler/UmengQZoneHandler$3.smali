.class Lcom/umeng/qq/handler/UmengQZoneHandler$3;
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

.field final synthetic val$error:Ljava/lang/String;

.field final synthetic val$listener:Lcom/umeng/socialize/UMShareListener;


# direct methods
.method constructor <init>(Lcom/umeng/qq/handler/UmengQZoneHandler;Lcom/umeng/socialize/UMShareListener;Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/umeng/qq/handler/UmengQZoneHandler$3;->this$0:Lcom/umeng/qq/handler/UmengQZoneHandler;

    iput-object p2, p0, Lcom/umeng/qq/handler/UmengQZoneHandler$3;->val$listener:Lcom/umeng/socialize/UMShareListener;

    iput-object p3, p0, Lcom/umeng/qq/handler/UmengQZoneHandler$3;->val$error:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 76
    iget-object v0, p0, Lcom/umeng/qq/handler/UmengQZoneHandler$3;->this$0:Lcom/umeng/qq/handler/UmengQZoneHandler;

    iget-object v1, p0, Lcom/umeng/qq/handler/UmengQZoneHandler$3;->val$listener:Lcom/umeng/socialize/UMShareListener;

    invoke-virtual {v0, v1}, Lcom/umeng/qq/handler/UmengQZoneHandler;->getShareListener(Lcom/umeng/socialize/UMShareListener;)Lcom/umeng/socialize/UMShareListener;

    move-result-object v0

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QZONE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    new-instance v2, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/umeng/socialize/bean/UmengErrorCode;->ShareFailed:Lcom/umeng/socialize/bean/UmengErrorCode;

    invoke-virtual {v4}, Lcom/umeng/socialize/bean/UmengErrorCode;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/umeng/qq/handler/UmengQZoneHandler$3;->val$error:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/UMShareListener;->onError(Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/Throwable;)V

    return-void
.end method
