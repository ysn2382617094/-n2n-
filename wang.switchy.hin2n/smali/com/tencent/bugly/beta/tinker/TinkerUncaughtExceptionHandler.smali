.class public Lcom/tencent/bugly/beta/tinker/TinkerUncaughtExceptionHandler;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final DALVIK_XPOSED_CRASH:Ljava/lang/String; = "Class ref in pre-verified class resolved to unexpected implementation"

.field public static final MAX_CRASH_COUNT:I = 0x3

.field private static final QUICK_CRASH_ELAPSE:J = 0x2710L

.field private static final TAG:Ljava/lang/String; = "Tinker.TinkerUncaughtExceptionHandler"


# instance fields
.field private final ueh:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerUncaughtExceptionHandler;->ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method private tinkerFastCrashProtect()Z
    .locals 7

    .line 93
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->getTinkerApplicationLike()Lcom/tencent/tinker/loader/app/ApplicationLike;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 95
    invoke-virtual {v0}, Lcom/tencent/tinker/loader/app/ApplicationLike;->getApplication()Landroid/app/Application;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    invoke-static {v0}, Lcom/tencent/tinker/lib/tinker/TinkerApplicationHelper;->isTinkerLoadSuccess(Lcom/tencent/tinker/loader/app/ApplicationLike;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 102
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/tencent/tinker/loader/app/ApplicationLike;->getApplicationStartElapsedTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    cmp-long v6, v2, v4

    if-gez v6, :cond_4

    .line 105
    invoke-static {v0}, Lcom/tencent/tinker/lib/tinker/TinkerApplicationHelper;->getCurrentVersion(Lcom/tencent/tinker/loader/app/ApplicationLike;)Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-static {v2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isNullOrNil(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    .line 110
    :cond_2
    invoke-virtual {v0}, Lcom/tencent/tinker/loader/app/ApplicationLike;->getApplication()Landroid/app/Application;

    move-result-object v3

    const-string v4, "tinker_share_config"

    invoke-virtual {v3, v4, v1}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 111
    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    const/4 v6, 0x3

    if-lt v4, v6, :cond_3

    .line 113
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerReport;->onFastCrashProtect()V

    .line 114
    invoke-static {v0}, Lcom/tencent/tinker/lib/tinker/TinkerApplicationHelper;->cleanPatch(Lcom/tencent/tinker/loader/app/ApplicationLike;)V

    const-string v0, "Tinker.TinkerUncaughtExceptionHandler"

    const-string v2, "tinker has fast crash more than %d, we just clean patch!"

    .line 115
    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v2, v3}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    .line 118
    :cond_3
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "Tinker.TinkerUncaughtExceptionHandler"

    const-string v2, "tinker has fast crash %d times"

    .line 119
    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v2, v3}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    return v1

    :cond_5
    :goto_0
    return v1
.end method

.method private tinkerPreVerifiedCrashHandler(Ljava/lang/Throwable;)V
    .locals 5

    .line 46
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->getTinkerApplicationLike()Lcom/tencent/tinker/loader/app/ApplicationLike;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 47
    invoke-virtual {v0}, Lcom/tencent/tinker/loader/app/ApplicationLike;->getApplication()Landroid/app/Application;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 52
    :cond_0
    invoke-static {v0}, Lcom/tencent/tinker/lib/tinker/TinkerApplicationHelper;->isTinkerLoadSuccess(Lcom/tencent/tinker/loader/app/ApplicationLike;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string p1, "Tinker.TinkerUncaughtExceptionHandler"

    const-string v0, "tinker is not loaded"

    .line 53
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz p1, :cond_5

    if-nez v2, :cond_2

    .line 61
    invoke-static {p1}, Lcom/tencent/bugly/beta/tinker/TinkerUtils;->isXposedExists(Ljava/lang/Throwable;)Z

    move-result v2

    :cond_2
    if-eqz v2, :cond_4

    .line 69
    instance-of v3, p1, Ljava/lang/IllegalAccessError;

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Class ref in pre-verified class resolved to unexpected implementation"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_4

    .line 75
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerReport;->onXposedCrash()V

    const-string p1, "Tinker.TinkerUncaughtExceptionHandler"

    const-string v2, "have xposed: just clean tinker"

    .line 76
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v2, v1}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    invoke-virtual {v0}, Lcom/tencent/tinker/loader/app/ApplicationLike;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->killAllOtherProcess(Landroid/content/Context;)V

    .line 80
    invoke-static {v0}, Lcom/tencent/tinker/lib/tinker/TinkerApplicationHelper;->cleanPatch(Lcom/tencent/tinker/loader/app/ApplicationLike;)V

    .line 81
    invoke-virtual {v0}, Lcom/tencent/tinker/loader/app/ApplicationLike;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->setTinkerDisableWithSharedPreferences(Landroid/content/Context;)V

    return-void

    .line 85
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    :cond_5
    return-void

    :cond_6
    :goto_2
    const-string p1, "Tinker.TinkerUncaughtExceptionHandler"

    const-string v0, "applicationlike is null"

    .line 48
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "Tinker.TinkerUncaughtExceptionHandler"

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uncaughtException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    invoke-direct {p0}, Lcom/tencent/bugly/beta/tinker/TinkerUncaughtExceptionHandler;->tinkerFastCrashProtect()Z

    .line 35
    invoke-direct {p0, p2}, Lcom/tencent/bugly/beta/tinker/TinkerUncaughtExceptionHandler;->tinkerPreVerifiedCrashHandler(Ljava/lang/Throwable;)V

    .line 36
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerUncaughtExceptionHandler;->ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
