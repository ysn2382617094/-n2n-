.class public Lcom/tencent/bugly/beta/tinker/TinkerManager;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerListener;,
        Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerPatchResultListener;
    }
.end annotation


# static fields
.field public static final MF_FILE:Ljava/lang/String; = "YAPATCH.MF"

.field public static final PATCH_DIR:Ljava/lang/String; = "dex"

.field public static final PATCH_NAME:Ljava/lang/String; = "patch.apk"

.field private static final TAG:Ljava/lang/String; = "Tinker.TinkerManager"

.field public static apkOriginalBuildNum:Ljava/lang/String;

.field private static isInstalled:Z

.field public static patchCurBuildNum:Ljava/lang/String;

.field public static patchRestartOnScreenOff:Z

.field static patchResultListener:Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerPatchResultListener;

.field private static systemExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static tinkerManager:Lcom/tencent/bugly/beta/tinker/TinkerManager;

.field public static tinkerReport:Lcom/tencent/bugly/beta/tinker/TinkerReport;

.field private static uncaughtExceptionHandler:Lcom/tencent/bugly/beta/tinker/TinkerUncaughtExceptionHandler;

.field static userLoadReporter:Lcom/tencent/tinker/lib/reporter/LoadReporter;

.field static userPatchListener:Lcom/tencent/tinker/lib/listener/PatchListener;

.field static userPatchReporter:Lcom/tencent/tinker/lib/reporter/PatchReporter;

.field static userUpgradePatchProcessor:Lcom/tencent/tinker/lib/patch/AbstractPatch;


# instance fields
.field private application:Landroid/app/Application;

.field private applicationLike:Lcom/tencent/tinker/loader/app/ApplicationLike;

.field private tinkerListener:Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Lcom/tencent/bugly/beta/tinker/TinkerManager;

    invoke-direct {v0}, Lcom/tencent/bugly/beta/tinker/TinkerManager;-><init>()V

    sput-object v0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->tinkerManager:Lcom/tencent/bugly/beta/tinker/TinkerManager;

    const-string v0, ""

    .line 67
    sput-object v0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->apkOriginalBuildNum:Ljava/lang/String;

    const-string v0, ""

    .line 68
    sput-object v0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->patchCurBuildNum:Ljava/lang/String;

    const/4 v0, 0x1

    .line 82
    sput-boolean v0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->patchRestartOnScreenOff:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/bugly/beta/tinker/TinkerManager;)Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerListener;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->tinkerListener:Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerListener;

    return-object p0
.end method

.method public static getApplication()Landroid/app/Application;
    .locals 1

    .line 100
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->getInstance()Lcom/tencent/bugly/beta/tinker/TinkerManager;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->application:Landroid/app/Application;

    return-object v0
.end method

.method public static getInstance()Lcom/tencent/bugly/beta/tinker/TinkerManager;
    .locals 1

    .line 85
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->tinkerManager:Lcom/tencent/bugly/beta/tinker/TinkerManager;

    return-object v0
.end method

.method public static getNewTinkerId()Ljava/lang/String;
    .locals 3

    .line 348
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->getTinkerApplicationLike()Lcom/tencent/tinker/loader/app/ApplicationLike;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tinker/lib/tinker/TinkerApplicationHelper;->getPackageConfigs(Lcom/tencent/tinker/loader/app/ApplicationLike;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "NEW_TINKER_ID"

    .line 350
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tinker_id_"

    const-string v2, ""

    .line 351
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static getTinkerApplicationLike()Lcom/tencent/tinker/loader/app/ApplicationLike;
    .locals 1

    .line 96
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->getInstance()Lcom/tencent/bugly/beta/tinker/TinkerManager;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->applicationLike:Lcom/tencent/tinker/loader/app/ApplicationLike;

    return-object v0
.end method

.method public static getTinkerId()Ljava/lang/String;
    .locals 3

    .line 317
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->with(Landroid/content/Context;)Lcom/tencent/tinker/lib/tinker/Tinker;

    move-result-object v0

    .line 319
    invoke-virtual {v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->isTinkerLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->getTinkerApplicationLike()Lcom/tencent/tinker/loader/app/ApplicationLike;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tinker/lib/tinker/TinkerApplicationHelper;->getPackageConfigs(Lcom/tencent/tinker/loader/app/ApplicationLike;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "TINKER_ID"

    .line 323
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tinker_id_"

    const-string v2, ""

    .line 324
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0

    .line 330
    :cond_1
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->getManifestTinkerID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 331
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tinker_id_"

    const-string v2, ""

    .line 332
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, ""

    return-object v0
.end method

.method private static installDefaultTinker(Lcom/tencent/tinker/loader/app/ApplicationLike;)V
    .locals 8

    .line 129
    sget-boolean v0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->isInstalled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p0, "Tinker.TinkerManager"

    const-string v0, "install tinker, but has installed, ignore"

    .line 130
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "Tinker.TinkerManager"

    const-string v0, "Tinker ApplicationLike is null"

    .line 134
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 139
    :cond_1
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->getInstance()Lcom/tencent/bugly/beta/tinker/TinkerManager;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->setTinkerApplicationLike(Lcom/tencent/tinker/loader/app/ApplicationLike;)V

    .line 142
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->registJavaCrashHandler()V

    const/4 v0, 0x1

    .line 145
    invoke-static {v0}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->setUpgradeRetryEnable(Z)V

    .line 148
    new-instance v1, Lcom/tencent/bugly/beta/tinker/TinkerReport;

    invoke-direct {v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport;-><init>()V

    sput-object v1, Lcom/tencent/bugly/beta/tinker/TinkerManager;->tinkerReport:Lcom/tencent/bugly/beta/tinker/TinkerReport;

    .line 151
    new-instance v1, Lcom/tencent/bugly/beta/tinker/TinkerLogger;

    invoke-direct {v1}, Lcom/tencent/bugly/beta/tinker/TinkerLogger;-><init>()V

    invoke-static {v1}, Lcom/tencent/tinker/lib/util/TinkerLog;->setTinkerLogImp(Lcom/tencent/tinker/lib/util/TinkerLog$TinkerLogImp;)V

    .line 153
    new-instance v3, Lcom/tencent/bugly/beta/tinker/TinkerLoadReporter;

    invoke-virtual {p0}, Lcom/tencent/tinker/loader/app/ApplicationLike;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/tencent/bugly/beta/tinker/TinkerLoadReporter;-><init>(Landroid/content/Context;)V

    .line 154
    new-instance v4, Lcom/tencent/bugly/beta/tinker/TinkerPatchReporter;

    invoke-virtual {p0}, Lcom/tencent/tinker/loader/app/ApplicationLike;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/tencent/bugly/beta/tinker/TinkerPatchReporter;-><init>(Landroid/content/Context;)V

    .line 155
    new-instance v5, Lcom/tencent/bugly/beta/tinker/TinkerPatchListener;

    invoke-virtual {p0}, Lcom/tencent/tinker/loader/app/ApplicationLike;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v5, v1}, Lcom/tencent/bugly/beta/tinker/TinkerPatchListener;-><init>(Landroid/content/Context;)V

    .line 156
    new-instance v7, Lcom/tencent/tinker/lib/patch/UpgradePatch;

    invoke-direct {v7}, Lcom/tencent/tinker/lib/patch/UpgradePatch;-><init>()V

    .line 158
    const-class v6, Lcom/tencent/bugly/beta/tinker/TinkerResultService;

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/tencent/tinker/lib/tinker/TinkerInstaller;->install(Lcom/tencent/tinker/loader/app/ApplicationLike;Lcom/tencent/tinker/lib/reporter/LoadReporter;Lcom/tencent/tinker/lib/reporter/PatchReporter;Lcom/tencent/tinker/lib/listener/PatchListener;Ljava/lang/Class;Lcom/tencent/tinker/lib/patch/AbstractPatch;)Lcom/tencent/tinker/lib/tinker/Tinker;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 161
    sput-boolean v0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->isInstalled:Z

    :cond_2
    return-void
.end method

.method public static installTinker(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "Tinker.TinkerManager"

    const-string v1, "Tinker ApplicationLike is null"

    .line 172
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v0}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 176
    :cond_0
    instance-of v1, p0, Lcom/tencent/tinker/loader/app/ApplicationLike;

    if-eqz v1, :cond_1

    .line 177
    check-cast p0, Lcom/tencent/tinker/loader/app/ApplicationLike;

    invoke-static {p0}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->installDefaultTinker(Lcom/tencent/tinker/loader/app/ApplicationLike;)V

    goto :goto_0

    :cond_1
    const-string p0, "Tinker.TinkerManager"

    const-string v1, "NOT tinker ApplicationLike object"

    .line 179
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v0}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static installTinker(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerPatchResultListener;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 212
    instance-of v1, p1, Lcom/tencent/tinker/lib/reporter/LoadReporter;

    if-eqz v1, :cond_0

    .line 213
    check-cast p1, Lcom/tencent/tinker/lib/reporter/LoadReporter;

    sput-object p1, Lcom/tencent/bugly/beta/tinker/TinkerManager;->userLoadReporter:Lcom/tencent/tinker/lib/reporter/LoadReporter;

    goto :goto_0

    :cond_0
    const-string p0, "Tinker.TinkerManager"

    const-string p1, "NOT LoadReporter object"

    .line 215
    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    .line 221
    instance-of p1, p2, Lcom/tencent/tinker/lib/reporter/PatchReporter;

    if-eqz p1, :cond_2

    .line 222
    check-cast p2, Lcom/tencent/tinker/lib/reporter/PatchReporter;

    sput-object p2, Lcom/tencent/bugly/beta/tinker/TinkerManager;->userPatchReporter:Lcom/tencent/tinker/lib/reporter/PatchReporter;

    goto :goto_1

    :cond_2
    const-string p0, "Tinker.TinkerManager"

    const-string p1, "NOT PatchReporter object"

    .line 224
    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    :goto_1
    if-eqz p3, :cond_5

    .line 230
    instance-of p1, p3, Lcom/tencent/tinker/lib/listener/PatchListener;

    if-eqz p1, :cond_4

    .line 231
    check-cast p3, Lcom/tencent/tinker/lib/listener/PatchListener;

    sput-object p3, Lcom/tencent/bugly/beta/tinker/TinkerManager;->userPatchListener:Lcom/tencent/tinker/lib/listener/PatchListener;

    goto :goto_2

    :cond_4
    const-string p0, "Tinker.TinkerManager"

    const-string p1, "NOT PatchListener object"

    .line 233
    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_5
    :goto_2
    if-eqz p4, :cond_7

    .line 239
    instance-of p1, p4, Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerPatchResultListener;

    if-eqz p1, :cond_6

    .line 240
    sput-object p4, Lcom/tencent/bugly/beta/tinker/TinkerManager;->patchResultListener:Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerPatchResultListener;

    goto :goto_3

    :cond_6
    const-string p0, "Tinker.TinkerManager"

    const-string p1, "NOT TinkerPatchResultListener object"

    .line 242
    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_7
    :goto_3
    if-eqz p5, :cond_9

    .line 248
    instance-of p1, p5, Lcom/tencent/tinker/lib/patch/AbstractPatch;

    if-eqz p1, :cond_8

    .line 249
    check-cast p5, Lcom/tencent/tinker/lib/patch/AbstractPatch;

    sput-object p5, Lcom/tencent/bugly/beta/tinker/TinkerManager;->userUpgradePatchProcessor:Lcom/tencent/tinker/lib/patch/AbstractPatch;

    goto :goto_4

    :cond_8
    const-string p0, "Tinker.TinkerManager"

    const-string p1, "NOT AbstractPatch object"

    .line 251
    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 256
    :cond_9
    :goto_4
    invoke-static {p0}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->installTinker(Ljava/lang/Object;)V

    return-void
.end method

.method public static isPatchRestartOnScreenOff()Z
    .locals 1

    .line 75
    sget-boolean v0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->patchRestartOnScreenOff:Z

    return v0
.end method

.method public static isTinkerManagerInstalled()Z
    .locals 1

    .line 374
    sget-boolean v0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->isInstalled:Z

    return v0
.end method

.method public static loadArmLibrary(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 267
    invoke-static {p0, p1}, Lcom/tencent/tinker/lib/library/TinkerLoadLibrary;->loadArmLibrary(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static loadArmV7Library(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 277
    invoke-static {p0, p1}, Lcom/tencent/tinker/lib/library/TinkerLoadLibrary;->loadArmV7Library(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static loadLibraryFromTinker(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 288
    invoke-static {p0, p1, p2}, Lcom/tencent/tinker/lib/library/TinkerLoadLibrary;->loadLibraryFromTinker(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static registJavaCrashHandler()V
    .locals 1

    .line 104
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->uncaughtExceptionHandler:Lcom/tencent/bugly/beta/tinker/TinkerUncaughtExceptionHandler;

    if-nez v0, :cond_0

    .line 106
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->systemExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 107
    new-instance v0, Lcom/tencent/bugly/beta/tinker/TinkerUncaughtExceptionHandler;

    invoke-direct {v0}, Lcom/tencent/bugly/beta/tinker/TinkerUncaughtExceptionHandler;-><init>()V

    sput-object v0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->uncaughtExceptionHandler:Lcom/tencent/bugly/beta/tinker/TinkerUncaughtExceptionHandler;

    .line 108
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->uncaughtExceptionHandler:Lcom/tencent/bugly/beta/tinker/TinkerUncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_0
    return-void
.end method

.method public static setPatchRestartOnScreenOff(Z)V
    .locals 0

    .line 79
    sput-boolean p0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->patchRestartOnScreenOff:Z

    return-void
.end method

.method private setTinkerApplicationLike(Lcom/tencent/tinker/loader/app/ApplicationLike;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->applicationLike:Lcom/tencent/tinker/loader/app/ApplicationLike;

    if-eqz p1, :cond_0

    .line 91
    invoke-virtual {p1}, Lcom/tencent/tinker/loader/app/ApplicationLike;->getApplication()Landroid/app/Application;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->application:Landroid/app/Application;

    :cond_0
    return-void
.end method

.method public static setUpgradeRetryEnable(Z)V
    .locals 1

    .line 119
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->getTinkerApplicationLike()Lcom/tencent/tinker/loader/app/ApplicationLike;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tinker/loader/app/ApplicationLike;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tinker/lib/util/UpgradePatchRetry;->getInstance(Landroid/content/Context;)Lcom/tencent/tinker/lib/util/UpgradePatchRetry;

    move-result-object v0

    .line 120
    invoke-virtual {v0, p0}, Lcom/tencent/tinker/lib/util/UpgradePatchRetry;->setRetryEnable(Z)V

    return-void
.end method

.method public static unregistJavaCrashHandler()V
    .locals 1

    .line 113
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->systemExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 114
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->systemExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public applyPatch(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 298
    sget-boolean v0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->isInstalled:Z

    if-nez v0, :cond_0

    const-string p1, "Tinker.TinkerManager"

    const-string p2, "Tinker has not been installed."

    const/4 v0, 0x0

    .line 299
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->tinkerListener:Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerListener;

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->tinkerListener:Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerListener;

    invoke-interface {v0}, Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerListener;->onPatchStart()V

    .line 307
    :cond_1
    invoke-static {p1, p2}, Lcom/tencent/tinker/lib/tinker/TinkerInstaller;->onReceiveUpgradePatch(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public applyPatch(Ljava/lang/String;Z)V
    .locals 5

    const/4 v0, 0x0

    .line 423
    :try_start_0
    iget-object v1, p0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->applicationLike:Lcom/tencent/tinker/loader/app/ApplicationLike;

    invoke-virtual {v1}, Lcom/tencent/tinker/loader/app/ApplicationLike;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "dex"

    .line 424
    invoke-virtual {v1, v2, v0}, Landroid/app/Application;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 427
    new-instance v2, Ljava/io/File;

    const-string v3, "patch.apk"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 431
    invoke-virtual {p0, p1}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->checkNewPatch(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "Tinker.TinkerManager"

    const-string v3, "has new patch."

    .line 432
    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/tencent/tinker/lib/util/TinkerLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 433
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 434
    invoke-static {v1, v2}, Lcom/tencent/bugly/beta/tinker/TinkerUtils;->copy(Ljava/io/File;Ljava/io/File;)Z

    .line 437
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Tinker.TinkerManager"

    const-string p2, "patch not exist, just return."

    .line 438
    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v1}, Lcom/tencent/tinker/lib/util/TinkerLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    const-string p1, "Tinker.TinkerManager"

    const-string p2, "starting patch."

    .line 444
    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 445
    iget-object p1, p0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->applicationLike:Lcom/tencent/tinker/loader/app/ApplicationLike;

    invoke-virtual {p1}, Lcom/tencent/tinker/loader/app/ApplicationLike;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->applyPatch(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Tinker.TinkerManager"

    .line 448
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, p1, v0}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public checkNewPatch(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "Tinker.TinkerManager"

    const-string v1, "check if has new patch."

    const/4 v2, 0x0

    .line 459
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/tencent/tinker/lib/util/TinkerLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 460
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->getTinkerId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->apkOriginalBuildNum:Ljava/lang/String;

    .line 461
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->getNewTinkerId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->patchCurBuildNum:Ljava/lang/String;

    .line 466
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    move-object v0, p1

    :goto_0
    const/4 p1, 0x0

    goto :goto_1

    .line 469
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 470
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_7

    const-string p1, "YAPATCH.MF"

    .line 477
    invoke-static {v0, p1}, Lcom/tencent/bugly/beta/tinker/TinkerUtils;->readJarEntry(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_2

    return v2

    .line 482
    :cond_2
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 485
    :try_start_0
    new-instance p1, Ljava/util/Properties;

    invoke-direct {p1}, Ljava/util/Properties;-><init>()V

    .line 486
    invoke-virtual {p1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v0, "From"

    .line 488
    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v0, "To"

    .line 489
    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_2

    .line 494
    :cond_3
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->apkOriginalBuildNum:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string p1, "Tinker.TinkerManager"

    const-string v0, "patchCurBuildNum is null"

    .line 495
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 499
    :cond_4
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->apkOriginalBuildNum:Ljava/lang/String;

    const-string v3, "From"

    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "To"

    .line 500
    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/tencent/bugly/beta/tinker/TinkerManager;->patchCurBuildNum:Ljava/lang/String;

    const/4 v2, 0x1

    goto :goto_3

    :cond_5
    const-string p1, "Tinker.TinkerManager"

    const-string v0, "orign buildno invalid"

    .line 503
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    :goto_2
    const-string p1, "Tinker.TinkerManager"

    const-string v0, "From/To is null"

    .line 490
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    const-string p1, "Tinker.TinkerManager"

    const-string v0, "get properties failed"

    .line 507
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    move v2, p1

    :goto_3
    return v2
.end method

.method public cleanPatch(Z)V
    .locals 0

    .line 363
    invoke-virtual {p0, p1}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->onPatchRollback(Z)V

    return-void
.end method

.method public getPatchDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 0

    .line 522
    invoke-static {p1}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getPatchDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getTinkerListener()Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerListener;
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->tinkerListener:Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerListener;

    return-object v0
.end method

.method public onApplyFailure(Ljava/lang/String;)V
    .locals 1

    .line 554
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->tinkerListener:Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerListener;

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->tinkerListener:Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerListener;

    invoke-interface {v0, p1}, Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerListener;->onApplyFailure(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onApplySuccess(Ljava/lang/String;)V
    .locals 1

    .line 543
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->tinkerListener:Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerListener;

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->tinkerListener:Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerListener;

    invoke-interface {v0, p1}, Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerListener;->onApplySuccess(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDownloadFailure(Ljava/lang/String;)V
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->tinkerListener:Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerListener;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->tinkerListener:Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerListener;

    invoke-interface {v0, p1}, Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerListener;->onDownloadFailure(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDownloadSuccess(Ljava/lang/String;Z)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "Tinker.TinkerManager"

    const-string v2, "onDownloadSuccess."

    .line 404
    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/tencent/tinker/lib/util/TinkerLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 405
    iget-object v1, p0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->tinkerListener:Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerListener;

    if-eqz v1, :cond_0

    .line 406
    iget-object v1, p0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->tinkerListener:Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerListener;

    invoke-interface {v1, p1}, Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerListener;->onDownloadSuccess(Ljava/lang/String;)V

    .line 409
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->applyPatch(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Tinker.TinkerManager"

    const-string p2, "apply patch failed"

    .line 412
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onPatchRollback(Z)V
    .locals 2

    .line 565
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->with(Landroid/content/Context;)Lcom/tencent/tinker/lib/tinker/Tinker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->isTinkerLoaded()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "Tinker.PatchRequestCallback"

    const-string v0, "TinkerPatchRequestCallback: onPatchRollback, tinker is not loaded, just return"

    .line 566
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    const-string p1, "Tinker.TinkerManager"

    const-string v0, "delete patch now"

    .line 569
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 570
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/bugly/beta/tinker/TinkerUtils;->rollbackPatch(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const-string p1, "Tinker.TinkerManager"

    const-string v0, "tinker wait screen to restart process"

    .line 574
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 575
    new-instance p1, Lcom/tencent/bugly/beta/tinker/TinkerUtils$ScreenState;

    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lcom/tencent/bugly/beta/tinker/TinkerManager$1;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/beta/tinker/TinkerManager$1;-><init>(Lcom/tencent/bugly/beta/tinker/TinkerManager;)V

    invoke-direct {p1, v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerUtils$ScreenState;-><init>(Landroid/content/Context;Lcom/tencent/bugly/beta/tinker/TinkerUtils$ScreenState$IOnScreenOff;)V

    .line 583
    :goto_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 584
    new-instance v0, Lcom/tencent/bugly/beta/tinker/TinkerManager$2;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/beta/tinker/TinkerManager$2;-><init>(Lcom/tencent/bugly/beta/tinker/TinkerManager;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method

.method public setTinkerListener(Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerListener;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->tinkerListener:Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerListener;

    return-void
.end method

.method public setTinkerReport(Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;)V
    .locals 1

    .line 391
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->tinkerReport:Lcom/tencent/bugly/beta/tinker/TinkerReport;

    if-eqz v0, :cond_0

    .line 392
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->tinkerReport:Lcom/tencent/bugly/beta/tinker/TinkerReport;

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/beta/tinker/TinkerReport;->setReporter(Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;)V

    :cond_0
    return-void
.end method
