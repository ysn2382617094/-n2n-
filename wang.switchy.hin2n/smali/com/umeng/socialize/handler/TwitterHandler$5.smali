.class Lcom/umeng/socialize/handler/TwitterHandler$5;
.super Ljava/lang/Object;
.source "TwitterHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/handler/TwitterHandler;->updateStatus(Lcom/umeng/socialize/media/TwitterShareContent;Lcom/umeng/socialize/UMShareListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/socialize/handler/TwitterHandler;

.field final synthetic val$e:Ljava/lang/Exception;

.field final synthetic val$listener:Lcom/umeng/socialize/UMShareListener;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/handler/TwitterHandler;Lcom/umeng/socialize/UMShareListener;Ljava/lang/Exception;)V
    .locals 0

    .line 408
    iput-object p1, p0, Lcom/umeng/socialize/handler/TwitterHandler$5;->this$0:Lcom/umeng/socialize/handler/TwitterHandler;

    iput-object p2, p0, Lcom/umeng/socialize/handler/TwitterHandler$5;->val$listener:Lcom/umeng/socialize/UMShareListener;

    iput-object p3, p0, Lcom/umeng/socialize/handler/TwitterHandler$5;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 411
    iget-object v0, p0, Lcom/umeng/socialize/handler/TwitterHandler$5;->val$listener:Lcom/umeng/socialize/UMShareListener;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->TWITTER:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    new-instance v2, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/umeng/socialize/bean/UmengErrorCode;->ShareFailed:Lcom/umeng/socialize/bean/UmengErrorCode;

    invoke-virtual {v4}, Lcom/umeng/socialize/bean/UmengErrorCode;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/umeng/socialize/handler/TwitterHandler$5;->val$e:Ljava/lang/Exception;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/UMShareListener;->onError(Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/Throwable;)V

    return-void
.end method
