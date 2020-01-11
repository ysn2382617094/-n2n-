.class public Lcom/tencent/bugly/beta/tinker/TinkerResultService;
.super Lcom/tencent/tinker/lib/service/DefaultTinkerResultService;
.source "BUGLY"


# static fields
.field private static final TAG:Ljava/lang/String; = "Tinker.TinkerResultService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/tencent/tinker/lib/service/DefaultTinkerResultService;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/bugly/beta/tinker/TinkerResultService;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/tencent/bugly/beta/tinker/TinkerResultService;->restartProcess()V

    return-void
.end method

.method private restartProcess()V
    .locals 3

    const-string v0, "Tinker.TinkerResultService"

    const-string v1, "app is background now, i can kill quietly"

    const/4 v2, 0x0

    .line 91
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method


# virtual methods
.method public onPatchResult(Lcom/tencent/tinker/lib/service/PatchResult;)V
    .locals 5

    .line 29
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->patchResultListener:Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerPatchResultListener;

    if-eqz v0, :cond_0

    .line 30
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->patchResultListener:Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerPatchResultListener;

    invoke-interface {v0, p1}, Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerPatchResultListener;->onPatchResult(Lcom/tencent/tinker/lib/service/PatchResult;)V

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    const-string p1, "Tinker.TinkerResultService"

    const-string v1, "TinkerResultService received null result!!!!"

    .line 34
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string v1, "Tinker.TinkerResultService"

    const-string v2, "TinkerResultService receive result: %s"

    const/4 v3, 0x1

    .line 37
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/tencent/tinker/lib/service/PatchResult;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    invoke-virtual {p0}, Lcom/tencent/bugly/beta/tinker/TinkerResultService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tinker/lib/util/TinkerServiceInternals;->killTinkerPatchServiceProcess(Landroid/content/Context;)V

    .line 42
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 43
    new-instance v2, Lcom/tencent/bugly/beta/tinker/TinkerResultService$1;

    invoke-direct {v2, p0, p1}, Lcom/tencent/bugly/beta/tinker/TinkerResultService$1;-><init>(Lcom/tencent/bugly/beta/tinker/TinkerResultService;Lcom/tencent/tinker/lib/service/PatchResult;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 57
    iget-boolean v1, p1, Lcom/tencent/tinker/lib/service/PatchResult;->isSuccess:Z

    if-eqz v1, :cond_5

    .line 58
    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Lcom/tencent/tinker/lib/service/PatchResult;->rawPatchFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerResultService;->deleteRawPatchFile(Ljava/io/File;)V

    .line 62
    invoke-virtual {p0, p1}, Lcom/tencent/bugly/beta/tinker/TinkerResultService;->checkIfNeedKill(Lcom/tencent/tinker/lib/service/PatchResult;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 64
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->isPatchRestartOnScreenOff()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 67
    :cond_2
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerUtils;->isBackground()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Tinker.TinkerResultService"

    const-string v1, "it is in background, just restart process"

    .line 68
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    invoke-direct {p0}, Lcom/tencent/bugly/beta/tinker/TinkerResultService;->restartProcess()V

    goto :goto_0

    :cond_3
    const-string p1, "Tinker.TinkerResultService"

    const-string v1, "tinker wait screen to restart process"

    .line 73
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    new-instance p1, Lcom/tencent/bugly/beta/tinker/TinkerUtils$ScreenState;

    invoke-virtual {p0}, Lcom/tencent/bugly/beta/tinker/TinkerResultService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/tencent/bugly/beta/tinker/TinkerResultService$2;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/beta/tinker/TinkerResultService$2;-><init>(Lcom/tencent/bugly/beta/tinker/TinkerResultService;)V

    invoke-direct {p1, v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerUtils$ScreenState;-><init>(Landroid/content/Context;Lcom/tencent/bugly/beta/tinker/TinkerUtils$ScreenState$IOnScreenOff;)V

    goto :goto_0

    :cond_4
    const-string p1, "Tinker.TinkerResultService"

    const-string v1, "I have already install the newly patch version!"

    .line 82
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_0
    return-void
.end method
