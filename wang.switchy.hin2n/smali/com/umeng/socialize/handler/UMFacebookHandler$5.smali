.class Lcom/umeng/socialize/handler/UMFacebookHandler$5;
.super Ljava/lang/Object;
.source "UMFacebookHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/handler/UMFacebookHandler;->deleteAuth(Lcom/umeng/socialize/UMAuthListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/socialize/handler/UMFacebookHandler;

.field final synthetic val$listener:Lcom/umeng/socialize/UMAuthListener;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/handler/UMFacebookHandler;Lcom/umeng/socialize/UMAuthListener;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/umeng/socialize/handler/UMFacebookHandler$5;->this$0:Lcom/umeng/socialize/handler/UMFacebookHandler;

    iput-object p2, p0, Lcom/umeng/socialize/handler/UMFacebookHandler$5;->val$listener:Lcom/umeng/socialize/UMAuthListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 270
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMFacebookHandler$5;->val$listener:Lcom/umeng/socialize/UMAuthListener;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->FACEBOOK:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/socialize/UMAuthListener;->onComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILjava/util/Map;)V

    return-void
.end method
