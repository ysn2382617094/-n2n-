.class Lcom/tencent/bugly/beta/tinker/TinkerManager$1;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Lcom/tencent/bugly/beta/tinker/TinkerUtils$ScreenState$IOnScreenOff;


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

    .line 575
    iput-object p1, p0, Lcom/tencent/bugly/beta/tinker/TinkerManager$1;->this$0:Lcom/tencent/bugly/beta/tinker/TinkerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenOff()V
    .locals 1

    .line 578
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/beta/tinker/TinkerUtils;->rollbackPatch(Landroid/content/Context;)V

    return-void
.end method
