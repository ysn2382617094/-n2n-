.class Lcom/umeng/facebook/AccessTokenManager$1;
.super Ljava/lang/Object;
.source "AccessTokenManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/facebook/AccessTokenManager;->refreshCurrentAccessToken(Lcom/umeng/facebook/AccessToken$AccessTokenRefreshCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/facebook/AccessTokenManager;

.field final synthetic val$callback:Lcom/umeng/facebook/AccessToken$AccessTokenRefreshCallback;


# direct methods
.method constructor <init>(Lcom/umeng/facebook/AccessTokenManager;Lcom/umeng/facebook/AccessToken$AccessTokenRefreshCallback;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/umeng/facebook/AccessTokenManager$1;->this$0:Lcom/umeng/facebook/AccessTokenManager;

    iput-object p2, p0, Lcom/umeng/facebook/AccessTokenManager$1;->val$callback:Lcom/umeng/facebook/AccessToken$AccessTokenRefreshCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/umeng/facebook/AccessTokenManager$1;->this$0:Lcom/umeng/facebook/AccessTokenManager;

    iget-object v1, p0, Lcom/umeng/facebook/AccessTokenManager$1;->val$callback:Lcom/umeng/facebook/AccessToken$AccessTokenRefreshCallback;

    invoke-static {v0, v1}, Lcom/umeng/facebook/AccessTokenManager;->access$000(Lcom/umeng/facebook/AccessTokenManager;Lcom/umeng/facebook/AccessToken$AccessTokenRefreshCallback;)V

    return-void
.end method
