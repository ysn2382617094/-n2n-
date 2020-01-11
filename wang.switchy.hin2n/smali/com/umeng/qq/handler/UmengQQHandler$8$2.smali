.class Lcom/umeng/qq/handler/UmengQQHandler$8$2;
.super Ljava/lang/Object;
.source "UmengQQHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/qq/handler/UmengQQHandler$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/umeng/qq/handler/UmengQQHandler$8;

.field final synthetic val$infos:Ljava/util/Map;

.field final synthetic val$ret:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/umeng/qq/handler/UmengQQHandler$8;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/umeng/qq/handler/UmengQQHandler$8$2;->this$1:Lcom/umeng/qq/handler/UmengQQHandler$8;

    iput-object p2, p0, Lcom/umeng/qq/handler/UmengQQHandler$8$2;->val$ret:Ljava/lang/String;

    iput-object p3, p0, Lcom/umeng/qq/handler/UmengQQHandler$8$2;->val$infos:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 350
    iget-object v0, p0, Lcom/umeng/qq/handler/UmengQQHandler$8$2;->val$ret:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/umeng/qq/handler/UmengQQHandler$8$2;->val$ret:Ljava/lang/String;

    const-string v1, "100030"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/umeng/qq/handler/UmengQQHandler$8$2;->this$1:Lcom/umeng/qq/handler/UmengQQHandler$8;

    iget-object v0, v0, Lcom/umeng/qq/handler/UmengQQHandler$8;->this$0:Lcom/umeng/qq/handler/UmengQQHandler;

    invoke-static {v0}, Lcom/umeng/qq/handler/UmengQQHandler;->access$800(Lcom/umeng/qq/handler/UmengQQHandler;)V

    .line 352
    iget-object v0, p0, Lcom/umeng/qq/handler/UmengQQHandler$8$2;->this$1:Lcom/umeng/qq/handler/UmengQQHandler$8;

    iget-object v0, v0, Lcom/umeng/qq/handler/UmengQQHandler$8;->this$0:Lcom/umeng/qq/handler/UmengQQHandler;

    iget-object v1, p0, Lcom/umeng/qq/handler/UmengQQHandler$8$2;->this$1:Lcom/umeng/qq/handler/UmengQQHandler$8;

    iget-object v1, v1, Lcom/umeng/qq/handler/UmengQQHandler$8;->val$listener:Lcom/umeng/socialize/UMAuthListener;

    invoke-static {v0, v1}, Lcom/umeng/qq/handler/UmengQQHandler;->access$900(Lcom/umeng/qq/handler/UmengQQHandler;Lcom/umeng/socialize/UMAuthListener;)V

    goto :goto_0

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/umeng/qq/handler/UmengQQHandler$8$2;->this$1:Lcom/umeng/qq/handler/UmengQQHandler$8;

    iget-object v0, v0, Lcom/umeng/qq/handler/UmengQQHandler$8;->this$0:Lcom/umeng/qq/handler/UmengQQHandler;

    iget-object v1, p0, Lcom/umeng/qq/handler/UmengQQHandler$8$2;->this$1:Lcom/umeng/qq/handler/UmengQQHandler$8;

    iget-object v1, v1, Lcom/umeng/qq/handler/UmengQQHandler$8;->val$listener:Lcom/umeng/socialize/UMAuthListener;

    invoke-virtual {v0, v1}, Lcom/umeng/qq/handler/UmengQQHandler;->getAuthListener(Lcom/umeng/socialize/UMAuthListener;)Lcom/umeng/socialize/UMAuthListener;

    move-result-object v0

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Throwable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/umeng/socialize/bean/UmengErrorCode;->AuthorizeFailed:Lcom/umeng/socialize/bean/UmengErrorCode;

    invoke-virtual {v5}, Lcom/umeng/socialize/bean/UmengErrorCode;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/umeng/qq/handler/UmengQQHandler$8$2;->val$infos:Ljava/util/Map;

    const-string v6, "msg"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/socialize/UMAuthListener;->onError(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILjava/lang/Throwable;)V

    :goto_0
    return-void
.end method
