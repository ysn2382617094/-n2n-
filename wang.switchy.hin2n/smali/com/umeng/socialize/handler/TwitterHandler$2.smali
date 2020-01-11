.class Lcom/umeng/socialize/handler/TwitterHandler$2;
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

.field final synthetic val$listener:Lcom/umeng/socialize/UMShareListener;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/handler/TwitterHandler;Lcom/umeng/socialize/UMShareListener;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/umeng/socialize/handler/TwitterHandler$2;->this$0:Lcom/umeng/socialize/handler/TwitterHandler;

    iput-object p2, p0, Lcom/umeng/socialize/handler/TwitterHandler$2;->val$listener:Lcom/umeng/socialize/UMShareListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 379
    iget-object v0, p0, Lcom/umeng/socialize/handler/TwitterHandler$2;->val$listener:Lcom/umeng/socialize/UMShareListener;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->TWITTER:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {v0, v1}, Lcom/umeng/socialize/UMShareListener;->onResult(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    return-void
.end method
