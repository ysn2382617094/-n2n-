.class Lcom/umeng/qq/handler/UmengQQHandler$8$3;
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

.field final synthetic val$e:Lorg/json/JSONException;


# direct methods
.method constructor <init>(Lcom/umeng/qq/handler/UmengQQHandler$8;Lorg/json/JSONException;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/umeng/qq/handler/UmengQQHandler$8$3;->this$1:Lcom/umeng/qq/handler/UmengQQHandler$8;

    iput-object p2, p0, Lcom/umeng/qq/handler/UmengQQHandler$8$3;->val$e:Lorg/json/JSONException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 364
    iget-object v0, p0, Lcom/umeng/qq/handler/UmengQQHandler$8$3;->this$1:Lcom/umeng/qq/handler/UmengQQHandler$8;

    iget-object v0, v0, Lcom/umeng/qq/handler/UmengQQHandler$8;->this$0:Lcom/umeng/qq/handler/UmengQQHandler;

    iget-object v1, p0, Lcom/umeng/qq/handler/UmengQQHandler$8$3;->this$1:Lcom/umeng/qq/handler/UmengQQHandler$8;

    iget-object v1, v1, Lcom/umeng/qq/handler/UmengQQHandler$8;->val$listener:Lcom/umeng/socialize/UMAuthListener;

    invoke-virtual {v0, v1}, Lcom/umeng/qq/handler/UmengQQHandler;->getAuthListener(Lcom/umeng/socialize/UMAuthListener;)Lcom/umeng/socialize/UMAuthListener;

    move-result-object v0

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    new-instance v2, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/umeng/socialize/bean/UmengErrorCode;->RequestForUserProfileFailed:Lcom/umeng/socialize/bean/UmengErrorCode;

    invoke-virtual {v4}, Lcom/umeng/socialize/bean/UmengErrorCode;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/umeng/qq/handler/UmengQQHandler$8$3;->val$e:Lorg/json/JSONException;

    invoke-virtual {v4}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-interface {v0, v1, v3, v2}, Lcom/umeng/socialize/UMAuthListener;->onError(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILjava/lang/Throwable;)V

    return-void
.end method
