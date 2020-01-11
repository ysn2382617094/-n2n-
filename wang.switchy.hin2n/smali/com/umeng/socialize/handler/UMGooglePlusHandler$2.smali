.class Lcom/umeng/socialize/handler/UMGooglePlusHandler$2;
.super Ljava/lang/Object;
.source "UMGooglePlusHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/handler/UMGooglePlusHandler;->shareTo(Lcom/umeng/socialize/media/GooglePlusShareContent;Lcom/umeng/socialize/UMShareListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/socialize/handler/UMGooglePlusHandler;

.field final synthetic val$listener:Lcom/umeng/socialize/UMShareListener;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/handler/UMGooglePlusHandler;Lcom/umeng/socialize/UMShareListener;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/umeng/socialize/handler/UMGooglePlusHandler$2;->this$0:Lcom/umeng/socialize/handler/UMGooglePlusHandler;

    iput-object p2, p0, Lcom/umeng/socialize/handler/UMGooglePlusHandler$2;->val$listener:Lcom/umeng/socialize/UMShareListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMGooglePlusHandler$2;->val$listener:Lcom/umeng/socialize/UMShareListener;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->GOOGLEPLUS:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {v0, v1}, Lcom/umeng/socialize/UMShareListener;->onResult(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    return-void
.end method
