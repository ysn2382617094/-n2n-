.class Lcom/umeng/qq/handler/UmengQQHandler$7;
.super Ljava/lang/Object;
.source "UmengQQHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/qq/handler/UmengQQHandler;->loginDeal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/qq/handler/UmengQQHandler;


# direct methods
.method constructor <init>(Lcom/umeng/qq/handler/UmengQQHandler;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/umeng/qq/handler/UmengQQHandler$7;->this$0:Lcom/umeng/qq/handler/UmengQQHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 299
    iget-object v0, p0, Lcom/umeng/qq/handler/UmengQQHandler$7;->this$0:Lcom/umeng/qq/handler/UmengQQHandler;

    iget-object v1, p0, Lcom/umeng/qq/handler/UmengQQHandler$7;->this$0:Lcom/umeng/qq/handler/UmengQQHandler;

    iget-object v1, v1, Lcom/umeng/qq/handler/UmengQQHandler;->mAuthListener:Lcom/umeng/socialize/UMAuthListener;

    invoke-virtual {v0, v1}, Lcom/umeng/qq/handler/UmengQQHandler;->getAuthListener(Lcom/umeng/socialize/UMAuthListener;)Lcom/umeng/socialize/UMAuthListener;

    move-result-object v0

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    new-instance v2, Ljava/lang/Throwable;

    sget-object v3, Lcom/umeng/socialize/bean/UmengErrorCode;->NotInstall:Lcom/umeng/socialize/bean/UmengErrorCode;

    invoke-virtual {v3}, Lcom/umeng/socialize/bean/UmengErrorCode;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lcom/umeng/socialize/UMAuthListener;->onError(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILjava/lang/Throwable;)V

    return-void
.end method
