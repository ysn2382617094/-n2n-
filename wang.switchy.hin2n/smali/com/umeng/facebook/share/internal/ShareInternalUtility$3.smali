.class final Lcom/umeng/facebook/share/internal/ShareInternalUtility$3;
.super Ljava/lang/Object;
.source "ShareInternalUtility.java"

# interfaces
.implements Lcom/umeng/facebook/internal/CallbackManagerImpl$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/facebook/share/internal/ShareInternalUtility;->registerSharerCallback(ILcom/umeng/facebook/CallbackManager;Lcom/umeng/facebook/FacebookCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/umeng/facebook/FacebookCallback;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(ILcom/umeng/facebook/FacebookCallback;)V
    .locals 0

    .line 224
    iput p1, p0, Lcom/umeng/facebook/share/internal/ShareInternalUtility$3;->val$requestCode:I

    iput-object p2, p0, Lcom/umeng/facebook/share/internal/ShareInternalUtility$3;->val$callback:Lcom/umeng/facebook/FacebookCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(ILandroid/content/Intent;)Z
    .locals 2

    .line 227
    iget v0, p0, Lcom/umeng/facebook/share/internal/ShareInternalUtility$3;->val$requestCode:I

    iget-object v1, p0, Lcom/umeng/facebook/share/internal/ShareInternalUtility$3;->val$callback:Lcom/umeng/facebook/FacebookCallback;

    .line 231
    invoke-static {v1}, Lcom/umeng/facebook/share/internal/ShareInternalUtility;->getShareResultProcessor(Lcom/umeng/facebook/FacebookCallback;)Lcom/umeng/facebook/share/internal/ResultProcessor;

    move-result-object v1

    .line 227
    invoke-static {v0, p1, p2, v1}, Lcom/umeng/facebook/share/internal/ShareInternalUtility;->handleActivityResult(IILandroid/content/Intent;Lcom/umeng/facebook/share/internal/ResultProcessor;)Z

    move-result p1

    return p1
.end method
