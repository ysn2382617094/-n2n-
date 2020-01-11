.class Lcom/umeng/qq/handler/UmengQQHandler$9;
.super Ljava/lang/Object;
.source "UmengQQHandler.java"

# interfaces
.implements Lcom/umeng/socialize/UMAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/qq/handler/UmengQQHandler;->authAndFetchUserInfo(Lcom/umeng/socialize/UMAuthListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/qq/handler/UmengQQHandler;

.field final synthetic val$listener:Lcom/umeng/socialize/UMAuthListener;


# direct methods
.method constructor <init>(Lcom/umeng/qq/handler/UmengQQHandler;Lcom/umeng/socialize/UMAuthListener;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/umeng/qq/handler/UmengQQHandler$9;->this$0:Lcom/umeng/qq/handler/UmengQQHandler;

    iput-object p2, p0, Lcom/umeng/qq/handler/UmengQQHandler$9;->val$listener:Lcom/umeng/socialize/UMAuthListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V
    .locals 1

    .line 409
    iget-object p1, p0, Lcom/umeng/qq/handler/UmengQQHandler$9;->this$0:Lcom/umeng/qq/handler/UmengQQHandler;

    iget-object p2, p0, Lcom/umeng/qq/handler/UmengQQHandler$9;->val$listener:Lcom/umeng/socialize/UMAuthListener;

    invoke-virtual {p1, p2}, Lcom/umeng/qq/handler/UmengQQHandler;->getAuthListener(Lcom/umeng/socialize/UMAuthListener;)Lcom/umeng/socialize/UMAuthListener;

    move-result-object p1

    sget-object p2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const/4 v0, 0x2

    invoke-interface {p1, p2, v0}, Lcom/umeng/socialize/UMAuthListener;->onCancel(Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V

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

    .line 399
    iget-object p1, p0, Lcom/umeng/qq/handler/UmengQQHandler$9;->this$0:Lcom/umeng/qq/handler/UmengQQHandler;

    iget-object p2, p0, Lcom/umeng/qq/handler/UmengQQHandler$9;->val$listener:Lcom/umeng/socialize/UMAuthListener;

    invoke-static {p1, p2}, Lcom/umeng/qq/handler/UmengQQHandler;->access$1000(Lcom/umeng/qq/handler/UmengQQHandler;Lcom/umeng/socialize/UMAuthListener;)V

    return-void
.end method

.method public onError(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILjava/lang/Throwable;)V
    .locals 1

    .line 404
    iget-object p1, p0, Lcom/umeng/qq/handler/UmengQQHandler$9;->this$0:Lcom/umeng/qq/handler/UmengQQHandler;

    iget-object p2, p0, Lcom/umeng/qq/handler/UmengQQHandler$9;->val$listener:Lcom/umeng/socialize/UMAuthListener;

    invoke-virtual {p1, p2}, Lcom/umeng/qq/handler/UmengQQHandler;->getAuthListener(Lcom/umeng/socialize/UMAuthListener;)Lcom/umeng/socialize/UMAuthListener;

    move-result-object p1

    sget-object p2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const/4 v0, 0x2

    invoke-interface {p1, p2, v0, p3}, Lcom/umeng/socialize/UMAuthListener;->onError(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILjava/lang/Throwable;)V

    return-void
.end method

.method public onStart(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 0

    return-void
.end method
