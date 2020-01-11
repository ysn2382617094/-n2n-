.class Lcom/umeng/socialize/handler/TwitterHandler$SaveDateThread$1;
.super Ljava/lang/Object;
.source "TwitterHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/handler/TwitterHandler$SaveDateThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/umeng/socialize/handler/TwitterHandler$SaveDateThread;

.field final synthetic val$data:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/handler/TwitterHandler$SaveDateThread;Ljava/util/Map;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/umeng/socialize/handler/TwitterHandler$SaveDateThread$1;->this$1:Lcom/umeng/socialize/handler/TwitterHandler$SaveDateThread;

    iput-object p2, p0, Lcom/umeng/socialize/handler/TwitterHandler$SaveDateThread$1;->val$data:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 197
    iget-object v0, p0, Lcom/umeng/socialize/handler/TwitterHandler$SaveDateThread$1;->this$1:Lcom/umeng/socialize/handler/TwitterHandler$SaveDateThread;

    iget-object v0, v0, Lcom/umeng/socialize/handler/TwitterHandler$SaveDateThread;->this$0:Lcom/umeng/socialize/handler/TwitterHandler;

    invoke-static {v0}, Lcom/umeng/socialize/handler/TwitterHandler;->access$400(Lcom/umeng/socialize/handler/TwitterHandler;)Lcom/umeng/socialize/UMAuthListener;

    move-result-object v0

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->TWITTER:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    iget-object v2, p0, Lcom/umeng/socialize/handler/TwitterHandler$SaveDateThread$1;->val$data:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lcom/umeng/socialize/UMAuthListener;->onComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILjava/util/Map;)V

    return-void
.end method
