.class Lcom/tencent/bugly/beta/tinker/TinkerManager$2;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/beta/tinker/TinkerManager;->onPatchRollback(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/bugly/beta/tinker/TinkerManager;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/beta/tinker/TinkerManager;)V
    .locals 0

    .line 584
    iput-object p1, p0, Lcom/tencent/bugly/beta/tinker/TinkerManager$2;->this$0:Lcom/tencent/bugly/beta/tinker/TinkerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 587
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerManager$2;->this$0:Lcom/tencent/bugly/beta/tinker/TinkerManager;

    invoke-static {v0}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->access$000(Lcom/tencent/bugly/beta/tinker/TinkerManager;)Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerManager$2;->this$0:Lcom/tencent/bugly/beta/tinker/TinkerManager;

    invoke-static {v0}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->access$000(Lcom/tencent/bugly/beta/tinker/TinkerManager;)Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerListener;->onPatchRollback()V

    :cond_0
    return-void
.end method
