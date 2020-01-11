.class Lcom/umeng/qq/handler/UmengQQHandler$4;
.super Ljava/lang/Object;
.source "UmengQQHandler.java"

# interfaces
.implements Lcom/umeng/qq/tencent/IUiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/qq/handler/UmengQQHandler;->getQQSharelistener(Lcom/umeng/socialize/UMShareListener;)Lcom/umeng/qq/tencent/IUiListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/qq/handler/UmengQQHandler;

.field final synthetic val$listener:Lcom/umeng/socialize/UMShareListener;


# direct methods
.method constructor <init>(Lcom/umeng/qq/handler/UmengQQHandler;Lcom/umeng/socialize/UMShareListener;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/umeng/qq/handler/UmengQQHandler$4;->this$0:Lcom/umeng/qq/handler/UmengQQHandler;

    iput-object p2, p0, Lcom/umeng/qq/handler/UmengQQHandler$4;->val$listener:Lcom/umeng/socialize/UMShareListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/umeng/qq/handler/UmengQQHandler$4;->this$0:Lcom/umeng/qq/handler/UmengQQHandler;

    iget-object v1, p0, Lcom/umeng/qq/handler/UmengQQHandler$4;->val$listener:Lcom/umeng/socialize/UMShareListener;

    invoke-virtual {v0, v1}, Lcom/umeng/qq/handler/UmengQQHandler;->getShareListener(Lcom/umeng/socialize/UMShareListener;)Lcom/umeng/socialize/UMShareListener;

    move-result-object v0

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {v0, v1}, Lcom/umeng/socialize/UMShareListener;->onCancel(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 1

    .line 137
    iget-object p1, p0, Lcom/umeng/qq/handler/UmengQQHandler$4;->this$0:Lcom/umeng/qq/handler/UmengQQHandler;

    iget-object v0, p0, Lcom/umeng/qq/handler/UmengQQHandler$4;->val$listener:Lcom/umeng/socialize/UMShareListener;

    invoke-virtual {p1, v0}, Lcom/umeng/qq/handler/UmengQQHandler;->getShareListener(Lcom/umeng/socialize/UMShareListener;)Lcom/umeng/socialize/UMShareListener;

    move-result-object p1

    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {p1, v0}, Lcom/umeng/socialize/UMShareListener;->onResult(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    return-void
.end method

.method public onError(Lcom/umeng/qq/tencent/UiError;)V
    .locals 1

    .line 121
    new-instance v0, Lcom/umeng/qq/handler/UmengQQHandler$4$1;

    invoke-direct {v0, p0, p1}, Lcom/umeng/qq/handler/UmengQQHandler$4$1;-><init>(Lcom/umeng/qq/handler/UmengQQHandler$4;Lcom/umeng/qq/tencent/UiError;)V

    invoke-static {v0}, Lcom/umeng/socialize/common/QueuedWork;->runInMain(Ljava/lang/Runnable;)V

    return-void
.end method
