.class Lcom/umeng/qq/handler/UmengQQHandler$4$1;
.super Ljava/lang/Object;
.source "UmengQQHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/qq/handler/UmengQQHandler$4;->onError(Lcom/umeng/qq/tencent/UiError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/umeng/qq/handler/UmengQQHandler$4;

.field final synthetic val$e:Lcom/umeng/qq/tencent/UiError;


# direct methods
.method constructor <init>(Lcom/umeng/qq/handler/UmengQQHandler$4;Lcom/umeng/qq/tencent/UiError;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/umeng/qq/handler/UmengQQHandler$4$1;->this$1:Lcom/umeng/qq/handler/UmengQQHandler$4;

    iput-object p2, p0, Lcom/umeng/qq/handler/UmengQQHandler$4$1;->val$e:Lcom/umeng/qq/tencent/UiError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 124
    iget-object v0, p0, Lcom/umeng/qq/handler/UmengQQHandler$4$1;->this$1:Lcom/umeng/qq/handler/UmengQQHandler$4;

    iget-object v0, v0, Lcom/umeng/qq/handler/UmengQQHandler$4;->this$0:Lcom/umeng/qq/handler/UmengQQHandler;

    iget-object v1, p0, Lcom/umeng/qq/handler/UmengQQHandler$4$1;->this$1:Lcom/umeng/qq/handler/UmengQQHandler$4;

    iget-object v1, v1, Lcom/umeng/qq/handler/UmengQQHandler$4;->val$listener:Lcom/umeng/socialize/UMShareListener;

    invoke-virtual {v0, v1}, Lcom/umeng/qq/handler/UmengQQHandler;->getShareListener(Lcom/umeng/socialize/UMShareListener;)Lcom/umeng/socialize/UMShareListener;

    move-result-object v0

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    new-instance v2, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/umeng/socialize/bean/UmengErrorCode;->ShareFailed:Lcom/umeng/socialize/bean/UmengErrorCode;

    invoke-virtual {v4}, Lcom/umeng/socialize/bean/UmengErrorCode;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/umeng/qq/handler/UmengQQHandler$4$1;->val$e:Lcom/umeng/qq/tencent/UiError;

    if-nez v4, :cond_0

    const-string v4, ""

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/umeng/qq/handler/UmengQQHandler$4$1;->val$e:Lcom/umeng/qq/tencent/UiError;

    iget-object v4, v4, Lcom/umeng/qq/tencent/UiError;->errorMessage:Ljava/lang/String;

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/UMShareListener;->onError(Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/Throwable;)V

    return-void
.end method
