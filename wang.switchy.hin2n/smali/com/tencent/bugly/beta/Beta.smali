.class public Lcom/tencent/bugly/beta/Beta;
.super Lcom/tencent/bugly/a;
.source "BUGLY"


# static fields
.field public static final TAG_CANCEL_BUTTON:Ljava/lang/String; = "beta_cancel_button"

.field public static final TAG_CONFIRM_BUTTON:Ljava/lang/String; = "beta_confirm_button"

.field public static final TAG_IMG_BANNER:Ljava/lang/String; = "beta_upgrade_banner"

.field public static final TAG_TIP_MESSAGE:Ljava/lang/String; = "beta_tip_message"

.field public static final TAG_TITLE:Ljava/lang/String; = "beta_title"

.field public static final TAG_UPGRADE_FEATURE:Ljava/lang/String; = "beta_upgrade_feature"

.field public static final TAG_UPGRADE_INFO:Ljava/lang/String; = "beta_upgrade_info"

.field private static a:Lcom/tencent/bugly/beta/download/DownloadTask; = null

.field public static appChannel:Ljava/lang/String; = null

.field public static appVersionCode:I = 0x0

.field public static appVersionName:Ljava/lang/String; = null

.field public static autoCheckUpgrade:Z = true

.field public static autoDownloadOn4g:Z = false

.field public static autoDownloadOnWifi:Z = false

.field public static autoInit:Z = true

.field public static autoInstallApk:Z = false

.field public static betaPatchListener:Lcom/tencent/bugly/beta/interfaces/BetaPatchListener; = null

.field public static canAutoDownloadPatch:Z = false

.field public static canAutoPatch:Z = false

.field public static canNotShowUpgradeActs:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field

.field public static canNotifyUserRestart:Z = false

.field public static canShowApkInfo:Z = false

.field public static canShowUpgradeActs:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field

.field public static defaultBannerId:I = 0x0

.field public static dialogFullScreen:Z = false

.field public static downloadListener:Lcom/tencent/bugly/beta/download/DownloadListener; = null

.field public static enableHotfix:Z = false

.field public static enableNotification:Z = false

.field public static initDelay:J = 0xbb8L

.field public static initProcessName:Ljava/lang/String; = null

.field public static instance:Lcom/tencent/bugly/beta/Beta; = null

.field public static largeIconId:I = 0x0

.field public static setPatchRestartOnScreenOff:Z = false

.field public static showInterruptedStrategy:Z = true

.field public static smallIconId:I = 0x0

.field public static soBlackList:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static storageDir:Ljava/io/File; = null

.field public static strNetworkTipsCancelBtn:Ljava/lang/String; = "\u53d6\u6d88"

.field public static strNetworkTipsConfirmBtn:Ljava/lang/String; = "\u7ee7\u7eed\u4e0b\u8f7d"

.field public static strNetworkTipsMessage:Ljava/lang/String; = "\u4f60\u5df2\u5207\u6362\u5230\u79fb\u52a8\u7f51\u7edc\uff0c\u662f\u5426\u7ee7\u7eed\u5f53\u524d\u4e0b\u8f7d\uff1f"

.field public static strNetworkTipsTitle:Ljava/lang/String; = "\u7f51\u7edc\u63d0\u793a"

.field public static strNotificationClickToContinue:Ljava/lang/String; = "\u7ee7\u7eed\u4e0b\u8f7d"

.field public static strNotificationClickToInstall:Ljava/lang/String; = "\u70b9\u51fb\u5b89\u88c5"

.field public static strNotificationClickToRetry:Ljava/lang/String; = "\u70b9\u51fb\u91cd\u8bd5"

.field public static strNotificationClickToView:Ljava/lang/String; = "\u70b9\u51fb\u67e5\u770b"

.field public static strNotificationDownloadError:Ljava/lang/String; = "\u4e0b\u8f7d\u5931\u8d25"

.field public static strNotificationDownloadSucc:Ljava/lang/String; = "\u4e0b\u8f7d\u5b8c\u6210"

.field public static strNotificationDownloading:Ljava/lang/String; = "\u6b63\u5728\u4e0b\u8f7d"

.field public static strNotificationHaveNewVersion:Ljava/lang/String; = "\u6709\u65b0\u7248\u672c"

.field public static strToastCheckUpgradeError:Ljava/lang/String; = "\u68c0\u67e5\u65b0\u7248\u672c\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

.field public static strToastCheckingUpgrade:Ljava/lang/String; = "\u6b63\u5728\u68c0\u67e5\uff0c\u8bf7\u7a0d\u5019..."

.field public static strToastYourAreTheLatestVersion:Ljava/lang/String; = "\u4f60\u5df2\u7ecf\u662f\u6700\u65b0\u7248\u4e86"

.field public static strUpgradeDialogCancelBtn:Ljava/lang/String; = "\u4e0b\u6b21\u518d\u8bf4"

.field public static strUpgradeDialogContinueBtn:Ljava/lang/String; = "\u7ee7\u7eed"

.field public static strUpgradeDialogFeatureLabel:Ljava/lang/String; = "\u66f4\u65b0\u8bf4\u660e"

.field public static strUpgradeDialogFileSizeLabel:Ljava/lang/String; = "\u5305\u5927\u5c0f"

.field public static strUpgradeDialogInstallBtn:Ljava/lang/String; = "\u5b89\u88c5"

.field public static strUpgradeDialogRetryBtn:Ljava/lang/String; = "\u91cd\u8bd5"

.field public static strUpgradeDialogUpdateTimeLabel:Ljava/lang/String; = "\u66f4\u65b0\u65f6\u95f4"

.field public static strUpgradeDialogUpgradeBtn:Ljava/lang/String; = "\u7acb\u5373\u66f4\u65b0"

.field public static strUpgradeDialogVersionLabel:Ljava/lang/String; = "\u7248\u672c"

.field public static tipsDialogLayoutId:I

.field public static upgradeCheckPeriod:J

.field public static upgradeDialogLayoutId:I

.field public static upgradeDialogLifecycleListener:Lcom/tencent/bugly/beta/ui/UILifecycleListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/bugly/beta/ui/UILifecycleListener<",
            "Lcom/tencent/bugly/beta/UpgradeInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static upgradeListener:Lcom/tencent/bugly/beta/upgrade/UpgradeListener;

.field public static upgradeStateListener:Lcom/tencent/bugly/beta/upgrade/UpgradeStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/beta/Beta;->canShowUpgradeActs:Ljava/util/List;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/beta/Beta;->canNotShowUpgradeActs:Ljava/util/List;

    const/4 v0, 0x0

    .line 123
    sput-boolean v0, Lcom/tencent/bugly/beta/Beta;->enableHotfix:Z

    const/4 v1, 0x1

    .line 124
    sput-boolean v1, Lcom/tencent/bugly/beta/Beta;->enableNotification:Z

    .line 125
    sput-boolean v0, Lcom/tencent/bugly/beta/Beta;->autoDownloadOnWifi:Z

    .line 126
    sput-boolean v1, Lcom/tencent/bugly/beta/Beta;->canShowApkInfo:Z

    .line 128
    sput-boolean v1, Lcom/tencent/bugly/beta/Beta;->canAutoDownloadPatch:Z

    .line 129
    sput-boolean v1, Lcom/tencent/bugly/beta/Beta;->canAutoPatch:Z

    const/4 v2, 0x0

    .line 132
    sput-object v2, Lcom/tencent/bugly/beta/Beta;->appVersionName:Ljava/lang/String;

    const/high16 v3, -0x80000000

    .line 133
    sput v3, Lcom/tencent/bugly/beta/Beta;->appVersionCode:I

    .line 134
    sput-object v2, Lcom/tencent/bugly/beta/Beta;->appChannel:Ljava/lang/String;

    .line 135
    sput-boolean v0, Lcom/tencent/bugly/beta/Beta;->canNotifyUserRestart:Z

    .line 136
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lcom/tencent/bugly/beta/Beta;->soBlackList:Ljava/util/List;

    .line 137
    sput-boolean v0, Lcom/tencent/bugly/beta/Beta;->dialogFullScreen:Z

    .line 138
    sput-boolean v1, Lcom/tencent/bugly/beta/Beta;->autoInstallApk:Z

    .line 139
    sput-boolean v0, Lcom/tencent/bugly/beta/Beta;->autoDownloadOn4g:Z

    .line 140
    sput-boolean v1, Lcom/tencent/bugly/beta/Beta;->setPatchRestartOnScreenOff:Z

    .line 144
    new-instance v0, Lcom/tencent/bugly/beta/Beta;

    invoke-direct {v0}, Lcom/tencent/bugly/beta/Beta;-><init>()V

    sput-object v0, Lcom/tencent/bugly/beta/Beta;->instance:Lcom/tencent/bugly/beta/Beta;

    .line 751
    sput-object v2, Lcom/tencent/bugly/beta/Beta;->a:Lcom/tencent/bugly/beta/download/DownloadTask;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/tencent/bugly/a;-><init>()V

    return-void
.end method

.method public static applyDownloadedPatch()V
    .locals 3

    .line 956
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v1, v1, Lcom/tencent/bugly/beta/global/e;->H:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 957
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 958
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->getInstance()Lcom/tencent/bugly/beta/tinker/TinkerManager;

    move-result-object v0

    sget-object v1, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v1, v1, Lcom/tencent/bugly/beta/global/e;->H:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->applyPatch(Ljava/lang/String;Z)V

    goto :goto_0

    .line 960
    :cond_0
    const-class v0, Lcom/tencent/bugly/beta/Beta;

    const-string v1, "[applyDownloadedPatch] patch file not exist"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/bugly/proguard/an;->c(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public static applyTinkerPatch(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 933
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->getInstance()Lcom/tencent/bugly/beta/tinker/TinkerManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->applyPatch(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static cancelDownload()V
    .locals 8

    .line 718
    sget-object v0, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/c;->i:Lcom/tencent/bugly/beta/global/d;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/c;->i:Lcom/tencent/bugly/beta/global/d;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    aget-object v0, v0, v3

    sget-object v4, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-object v4, v4, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    if-ne v0, v4, :cond_0

    sget-object v0, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/c;->i:Lcom/tencent/bugly/beta/global/d;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    aget-object v0, v0, v2

    sget-object v4, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-object v4, v4, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    if-ne v0, v4, :cond_0

    sget-object v0, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/c;->i:Lcom/tencent/bugly/beta/global/d;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Boolean;

    .line 721
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v4, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-boolean v4, v4, Lcom/tencent/bugly/beta/upgrade/c;->g:Z

    if-eq v0, v4, :cond_1

    .line 722
    :cond_0
    sget-object v0, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    new-instance v4, Lcom/tencent/bugly/beta/global/d;

    const/16 v5, 0xe

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    sget-object v7, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-object v7, v7, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    aput-object v7, v6, v3

    sget-object v3, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-object v3, v3, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    aput-object v3, v6, v2

    sget-object v2, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-boolean v2, v2, Lcom/tencent/bugly/beta/upgrade/c;->g:Z

    .line 725
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v6, v1

    invoke-direct {v4, v5, v6}, Lcom/tencent/bugly/beta/global/d;-><init>(I[Ljava/lang/Object;)V

    iput-object v4, v0, Lcom/tencent/bugly/beta/upgrade/c;->i:Lcom/tencent/bugly/beta/global/d;

    .line 727
    :cond_1
    sget-object v0, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/c;->i:Lcom/tencent/bugly/beta/global/d;

    invoke-virtual {v0}, Lcom/tencent/bugly/beta/global/d;->run()V

    return-void
.end method

.method public static checkUpgrade()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 162
    invoke-static {v0, v1}, Lcom/tencent/bugly/beta/Beta;->checkUpgrade(ZZ)V

    return-void
.end method

.method public static checkUpgrade(ZZ)V
    .locals 11

    .line 174
    :try_start_0
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 175
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    if-ne v0, v4, :cond_0

    .line 177
    invoke-static {}, Lcom/tencent/bugly/proguard/am;->a()Lcom/tencent/bugly/proguard/am;

    move-result-object v0

    new-instance v4, Lcom/tencent/bugly/beta/global/d;

    const/16 v5, 0x13

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v1, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-direct {v4, v5, v1}, Lcom/tencent/bugly/beta/global/d;-><init>(I[Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Lcom/tencent/bugly/proguard/am;->a(Ljava/lang/Runnable;)Z

    return-void

    .line 181
    :cond_0
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 182
    :goto_0
    :try_start_1
    sget-object v4, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v4, v4, Lcom/tencent/bugly/beta/global/e;->v:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_1

    .line 184
    :try_start_2
    sget-object v4, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_3
    const-string v4, "wait error"

    .line 186
    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/an;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 189
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :cond_2
    :goto_1
    const/4 v0, 0x3

    if-nez p0, :cond_6

    .line 195
    sget-object v4, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v4, v4, Lcom/tencent/bugly/beta/global/e;->v:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "[beta] BetaModule is uninitialized"

    .line 196
    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/an;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    const-string v4, "st.bch"

    .line 198
    sget-object v5, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 199
    invoke-static {v4, v5}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    if-eqz v4, :cond_5

    .line 201
    iget-object v5, v4, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    if-eqz v5, :cond_5

    .line 203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, v4, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->e:J

    const/4 v9, 0x0

    sub-long/2addr v5, v7

    sget-object v7, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-wide v7, v7, Lcom/tencent/bugly/beta/global/e;->c:J

    cmp-long v9, v5, v7

    if-gtz v9, :cond_5

    iget-object v4, v4, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget v4, v4, Lcom/tencent/bugly/proguard/y;->p:I

    if-ne v4, v0, :cond_4

    goto :goto_2

    .line 208
    :cond_4
    sget-object v5, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, ""

    move v6, p0

    move v7, p1

    invoke-virtual/range {v5 .. v10}, Lcom/tencent/bugly/beta/upgrade/c;->a(ZZILcom/tencent/bugly/proguard/y;Ljava/lang/String;)V

    goto :goto_3

    .line 205
    :cond_5
    :goto_2
    sget-object v4, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    invoke-virtual {v4, p0, p1, v3}, Lcom/tencent/bugly/beta/upgrade/c;->a(ZZI)V

    :cond_6
    :goto_3
    if-eqz p0, :cond_a

    .line 216
    sget-object v4, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v4, v4, Lcom/tencent/bugly/beta/global/e;->v:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x5

    const/16 v6, 0x12

    if-eqz v4, :cond_8

    const-string p1, "[beta] BetaModule is uninitialized"

    .line 217
    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1, v4}, Lcom/tencent/bugly/proguard/an;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 218
    sget-object p1, Lcom/tencent/bugly/beta/Beta;->upgradeStateListener:Lcom/tencent/bugly/beta/upgrade/UpgradeStateListener;

    if-eqz p1, :cond_7

    .line 219
    new-instance p1, Lcom/tencent/bugly/beta/global/d;

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v4, Lcom/tencent/bugly/beta/Beta;->upgradeStateListener:Lcom/tencent/bugly/beta/upgrade/UpgradeStateListener;

    aput-object v4, v0, v3

    const/4 v3, -0x1

    .line 220
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 221
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-direct {p1, v6, v0}, Lcom/tencent/bugly/beta/global/d;-><init>(I[Ljava/lang/Object;)V

    .line 219
    invoke-static {p1}, Lcom/tencent/bugly/beta/utils/e;->a(Ljava/lang/Runnable;)V

    goto :goto_4

    .line 223
    :cond_7
    new-instance p0, Lcom/tencent/bugly/beta/global/d;

    new-array p1, v2, [Ljava/lang/Object;

    sget-object v0, Lcom/tencent/bugly/beta/Beta;->strToastCheckUpgradeError:Ljava/lang/String;

    aput-object v0, p1, v3

    invoke-direct {p0, v5, p1}, Lcom/tencent/bugly/beta/global/d;-><init>(I[Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/tencent/bugly/beta/utils/e;->a(Ljava/lang/Runnable;)V

    goto :goto_4

    .line 227
    :cond_8
    sget-object v4, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    invoke-virtual {v4, p0, p1, v2}, Lcom/tencent/bugly/beta/upgrade/c;->a(ZZI)V

    .line 229
    sget-object p1, Lcom/tencent/bugly/beta/Beta;->upgradeStateListener:Lcom/tencent/bugly/beta/upgrade/UpgradeStateListener;

    if-eqz p1, :cond_9

    .line 230
    new-instance p1, Lcom/tencent/bugly/beta/global/d;

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v4, Lcom/tencent/bugly/beta/Beta;->upgradeStateListener:Lcom/tencent/bugly/beta/upgrade/UpgradeStateListener;

    aput-object v4, v0, v3

    .line 231
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 232
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-direct {p1, v6, v0}, Lcom/tencent/bugly/beta/global/d;-><init>(I[Ljava/lang/Object;)V

    .line 230
    invoke-static {p1}, Lcom/tencent/bugly/beta/utils/e;->a(Ljava/lang/Runnable;)V

    goto :goto_4

    .line 234
    :cond_9
    new-instance p0, Lcom/tencent/bugly/beta/global/d;

    new-array p1, v2, [Ljava/lang/Object;

    sget-object v0, Lcom/tencent/bugly/beta/Beta;->strToastCheckingUpgrade:Ljava/lang/String;

    aput-object v0, p1, v3

    invoke-direct {p0, v5, p1}, Lcom/tencent/bugly/beta/global/d;-><init>(I[Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/tencent/bugly/beta/utils/e;->a(Ljava/lang/Runnable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_1
    move-exception p0

    .line 240
    invoke-static {p0}, Lcom/tencent/bugly/proguard/an;->b(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 241
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    :goto_4
    return-void
.end method

.method public static cleanTinkerPatch(Z)V
    .locals 2

    const-string v0, "IS_PATCH_ROLL_BACK"

    const/4 v1, 0x0

    .line 1007
    invoke-static {v0, v1}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;Z)V

    .line 1008
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->getInstance()Lcom/tencent/bugly/beta/tinker/TinkerManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->cleanPatch(Z)V

    return-void
.end method

.method public static downloadPatch()V
    .locals 4

    .line 940
    sget-object v0, Lcom/tencent/bugly/proguard/q;->a:Lcom/tencent/bugly/proguard/q;

    sget-object v1, Lcom/tencent/bugly/proguard/q;->a:Lcom/tencent/bugly/proguard/q;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/proguard/q;->a(Lcom/tencent/bugly/proguard/y;)Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/proguard/q;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    .line 942
    :try_start_0
    sget-object v0, Lcom/tencent/bugly/proguard/q;->a:Lcom/tencent/bugly/proguard/q;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/q;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    if-eqz v0, :cond_0

    .line 943
    sget-object v0, Lcom/tencent/bugly/proguard/q;->a:Lcom/tencent/bugly/proguard/q;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/q;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    .line 945
    sget-object v1, Lcom/tencent/bugly/proguard/q;->a:Lcom/tencent/bugly/proguard/q;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/tencent/bugly/proguard/q;->a(ILcom/tencent/bugly/proguard/y;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/tencent/bugly/beta/Beta;
    .locals 2

    .line 152
    sget-object v0, Lcom/tencent/bugly/beta/Beta;->instance:Lcom/tencent/bugly/beta/Beta;

    const/16 v1, 0x3ea

    iput v1, v0, Lcom/tencent/bugly/beta/Beta;->id:I

    .line 153
    sget-object v0, Lcom/tencent/bugly/beta/Beta;->instance:Lcom/tencent/bugly/beta/Beta;

    const-string v1, "1.3.5"

    iput-object v1, v0, Lcom/tencent/bugly/beta/Beta;->version:Ljava/lang/String;

    .line 154
    sget-object v0, Lcom/tencent/bugly/beta/Beta;->instance:Lcom/tencent/bugly/beta/Beta;

    const-string v1, "G10"

    iput-object v1, v0, Lcom/tencent/bugly/beta/Beta;->versionKey:Ljava/lang/String;

    .line 155
    sget-object v0, Lcom/tencent/bugly/beta/Beta;->instance:Lcom/tencent/bugly/beta/Beta;

    return-object v0
.end method

.method public static getStrategyTask()Lcom/tencent/bugly/beta/download/DownloadTask;
    .locals 5

    .line 736
    sget-object v0, Lcom/tencent/bugly/beta/Beta;->a:Lcom/tencent/bugly/beta/download/DownloadTask;

    if-nez v0, :cond_0

    .line 737
    sget-object v0, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    const-string v1, "st.bch"

    sget-object v2, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 738
    invoke-static {v1, v2}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    iput-object v1, v0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    .line 739
    sget-object v0, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    if-eqz v0, :cond_0

    .line 740
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->p:Lcom/tencent/bugly/beta/download/b;

    sget-object v1, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-object v1, v1, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    iget-object v1, v1, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/y;->f:Lcom/tencent/bugly/proguard/u;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    sget-object v2, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v2, v2, Lcom/tencent/bugly/beta/global/e;->t:Ljava/io/File;

    .line 743
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-object v4, v4, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    iget-object v4, v4, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v4, v4, Lcom/tencent/bugly/proguard/y;->f:Lcom/tencent/bugly/proguard/u;

    iget-object v4, v4, Lcom/tencent/bugly/proguard/u;->a:Ljava/lang/String;

    .line 741
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/tencent/bugly/beta/download/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/beta/download/DownloadTask;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/beta/Beta;->a:Lcom/tencent/bugly/beta/download/DownloadTask;

    .line 745
    sget-object v0, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    sget-object v1, Lcom/tencent/bugly/beta/Beta;->a:Lcom/tencent/bugly/beta/download/DownloadTask;

    iput-object v1, v0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    .line 748
    :cond_0
    sget-object v0, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    return-object v0
.end method

.method public static getUpgradeInfo()Lcom/tencent/bugly/beta/UpgradeInfo;
    .locals 3

    .line 253
    :try_start_0
    sget-object v0, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    const-string v1, "st.bch"

    sget-object v2, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 254
    invoke-static {v1, v2}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    iput-object v1, v0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    .line 255
    sget-object v0, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    if-eqz v0, :cond_0

    .line 256
    new-instance v0, Lcom/tencent/bugly/beta/UpgradeInfo;

    sget-object v1, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-object v1, v1, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    iget-object v1, v1, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    invoke-direct {v0, v1}, Lcom/tencent/bugly/beta/UpgradeInfo;-><init>(Lcom/tencent/bugly/proguard/y;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static declared-synchronized getUpgradeStrategy()Lcom/tencent/bugly/proguard/y;
    .locals 4

    const-class v0, Lcom/tencent/bugly/beta/Beta;

    monitor-enter v0

    .line 868
    :try_start_0
    sget-object v1, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    const-string v2, "st.bch"

    sget-object v3, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 869
    invoke-static {v2, v3}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    iput-object v2, v1, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 871
    :try_start_1
    sget-object v1, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-object v1, v1, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    if-eqz v1, :cond_0

    .line 872
    sget-object v1, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-object v1, v1, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    iget-object v1, v1, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/y;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/proguard/y;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catch_0
    :cond_0
    const/4 v1, 0x0

    .line 877
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 867
    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized init(Landroid/content/Context;Z)V
    .locals 10

    const-class v0, Lcom/tencent/bugly/beta/Beta;

    monitor-enter v0

    :try_start_0
    const-string v1, "Beta init start...."

    const/4 v2, 0x0

    .line 271
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 272
    invoke-static {}, Lcom/tencent/bugly/proguard/ac;->a()Lcom/tencent/bugly/proguard/ac;

    move-result-object v1

    sget-object v3, Lcom/tencent/bugly/beta/Beta;->instance:Lcom/tencent/bugly/beta/Beta;

    iget v3, v3, Lcom/tencent/bugly/beta/Beta;->id:I

    sget v4, Lcom/tencent/bugly/beta/global/e;->a:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    sput v4, Lcom/tencent/bugly/beta/global/e;->a:I

    invoke-virtual {v1, v3, v4}, Lcom/tencent/bugly/proguard/ac;->a(II)V

    .line 275
    sget-object v1, Lcom/tencent/bugly/beta/Beta;->initProcessName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tencent/bugly/beta/Beta;->initProcessName:Ljava/lang/String;

    :cond_0
    const-string v1, "Beta will init at: %s"

    .line 278
    new-array v3, v5, [Ljava/lang/Object;

    sget-object v4, Lcom/tencent/bugly/beta/Beta;->initProcessName:Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 281
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/bugly/crashreport/common/info/a;->e:Ljava/lang/String;

    const-string v3, "current process: %s"

    .line 282
    new-array v4, v5, [Ljava/lang/Object;

    aput-object v1, v4, v2

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 283
    sget-object v3, Lcom/tencent/bugly/beta/Beta;->initProcessName:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 284
    monitor-exit v0

    return-void

    .line 287
    :cond_1
    :try_start_1
    sget-object v1, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    .line 288
    iget-object v3, v1, Lcom/tencent/bugly/beta/global/e;->v:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string p0, "Beta has been initialized [apkMD5 : %s]"

    .line 289
    new-array p1, v5, [Ljava/lang/Object;

    iget-object v1, v1, Lcom/tencent/bugly/beta/global/e;->v:Ljava/lang/String;

    aput-object v1, p1, v2

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/an;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 290
    monitor-exit v0

    return-void

    :cond_2
    :try_start_2
    const-string v3, "current upgrade sdk version:1.3.5"

    .line 294
    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 297
    iput-boolean p1, v1, Lcom/tencent/bugly/beta/global/e;->D:Z

    .line 299
    sget-wide v3, Lcom/tencent/bugly/beta/Beta;->upgradeCheckPeriod:J

    const-wide/16 v6, 0x0

    cmp-long p1, v3, v6

    if-gez p1, :cond_3

    const-string p1, "upgradeCheckPeriod cannot be negative"

    .line 300
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1, v3}, Lcom/tencent/bugly/proguard/an;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 302
    :cond_3
    sget-wide v3, Lcom/tencent/bugly/beta/Beta;->upgradeCheckPeriod:J

    iput-wide v3, v1, Lcom/tencent/bugly/beta/global/e;->c:J

    const-string p1, "setted upgradeCheckPeriod: %d"

    .line 303
    new-array v3, v5, [Ljava/lang/Object;

    sget-wide v8, Lcom/tencent/bugly/beta/Beta;->upgradeCheckPeriod:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {p1, v3}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 306
    :goto_0
    sget-wide v3, Lcom/tencent/bugly/beta/Beta;->initDelay:J

    cmp-long p1, v3, v6

    if-gez p1, :cond_4

    const-string p1, "initDelay cannot be negative"

    .line 307
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1, v3}, Lcom/tencent/bugly/proguard/an;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1

    .line 309
    :cond_4
    sget-wide v3, Lcom/tencent/bugly/beta/Beta;->initDelay:J

    iput-wide v3, v1, Lcom/tencent/bugly/beta/global/e;->b:J

    const-string p1, "setted initDelay: %d"

    .line 310
    new-array v3, v5, [Ljava/lang/Object;

    sget-wide v6, Lcom/tencent/bugly/beta/Beta;->initDelay:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {p1, v3}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 314
    :goto_1
    sget p1, Lcom/tencent/bugly/beta/Beta;->smallIconId:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_5

    .line 316
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v3, Lcom/tencent/bugly/beta/Beta;->smallIconId:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 317
    sget p1, Lcom/tencent/bugly/beta/Beta;->smallIconId:I

    iput p1, v1, Lcom/tencent/bugly/beta/global/e;->f:I

    const-string p1, "setted smallIconId: %d"

    .line 318
    new-array v3, v5, [Ljava/lang/Object;

    sget v4, Lcom/tencent/bugly/beta/Beta;->smallIconId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {p1, v3}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_4
    const-string v3, "smallIconId is not available:\n %s"

    .line 321
    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/an;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 326
    :cond_5
    :goto_2
    sget p1, Lcom/tencent/bugly/beta/Beta;->largeIconId:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p1, :cond_6

    .line 328
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v3, Lcom/tencent/bugly/beta/Beta;->largeIconId:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 329
    sget p1, Lcom/tencent/bugly/beta/Beta;->largeIconId:I

    iput p1, v1, Lcom/tencent/bugly/beta/global/e;->g:I

    const-string p1, "setted largeIconId: %d"

    .line 330
    new-array v3, v5, [Ljava/lang/Object;

    sget v4, Lcom/tencent/bugly/beta/Beta;->largeIconId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {p1, v3}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :catch_1
    move-exception p1

    :try_start_6
    const-string v3, "largeIconId is not available:\n %s"

    .line 333
    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/an;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 338
    :cond_6
    :goto_3
    sget p1, Lcom/tencent/bugly/beta/Beta;->defaultBannerId:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz p1, :cond_7

    .line 340
    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v3, Lcom/tencent/bugly/beta/Beta;->defaultBannerId:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 341
    sget p1, Lcom/tencent/bugly/beta/Beta;->defaultBannerId:I

    iput p1, v1, Lcom/tencent/bugly/beta/global/e;->h:I

    const-string p1, "setted defaultBannerId: %d"

    .line 342
    new-array v3, v5, [Ljava/lang/Object;

    sget v4, Lcom/tencent/bugly/beta/Beta;->defaultBannerId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {p1, v3}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    :catch_2
    move-exception p1

    :try_start_8
    const-string v3, "defaultBannerId is not available:\n %s"

    .line 345
    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/an;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 350
    :cond_7
    :goto_4
    sget p1, Lcom/tencent/bugly/beta/Beta;->upgradeDialogLayoutId:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz p1, :cond_8

    .line 352
    :try_start_9
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v3, Lcom/tencent/bugly/beta/Beta;->upgradeDialogLayoutId:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 354
    sget v3, Lcom/tencent/bugly/beta/Beta;->upgradeDialogLayoutId:I

    iput v3, v1, Lcom/tencent/bugly/beta/global/e;->i:I

    const-string v3, "setted upgradeDialogLayoutId: %d"

    .line 355
    new-array v4, v5, [Ljava/lang/Object;

    sget v6, Lcom/tencent/bugly/beta/Beta;->upgradeDialogLayoutId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v2

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 356
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_5

    :catch_3
    move-exception p1

    :try_start_a
    const-string v3, "upgradeDialogLayoutId is not available:\n %s"

    .line 359
    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/an;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 364
    :cond_8
    :goto_5
    sget p1, Lcom/tencent/bugly/beta/Beta;->tipsDialogLayoutId:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz p1, :cond_9

    .line 366
    :try_start_b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v3, Lcom/tencent/bugly/beta/Beta;->tipsDialogLayoutId:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 368
    sget v3, Lcom/tencent/bugly/beta/Beta;->tipsDialogLayoutId:I

    iput v3, v1, Lcom/tencent/bugly/beta/global/e;->j:I

    const-string v3, "setted tipsDialogLayoutId: %d"

    .line 369
    new-array v4, v5, [Ljava/lang/Object;

    sget v6, Lcom/tencent/bugly/beta/Beta;->tipsDialogLayoutId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v2

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 370
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_6

    :catch_4
    move-exception p1

    :try_start_c
    const-string v3, "tipsDialogLayoutId is not available:\n %s"

    .line 373
    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/an;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 378
    :cond_9
    :goto_6
    sget-object p1, Lcom/tencent/bugly/beta/Beta;->upgradeDialogLifecycleListener:Lcom/tencent/bugly/beta/ui/UILifecycleListener;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz p1, :cond_a

    .line 380
    :try_start_d
    sget-object p1, Lcom/tencent/bugly/beta/Beta;->upgradeDialogLifecycleListener:Lcom/tencent/bugly/beta/ui/UILifecycleListener;

    iput-object p1, v1, Lcom/tencent/bugly/beta/global/e;->k:Lcom/tencent/bugly/beta/ui/UILifecycleListener;

    .line 381
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setted upgradeDialogLifecycleListener:%s"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/tencent/bugly/beta/Beta;->upgradeDialogLifecycleListener:Lcom/tencent/bugly/beta/ui/UILifecycleListener;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1, v3}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_7

    :catch_5
    move-exception p1

    :try_start_e
    const-string v3, "upgradeDialogLifecycleListener is not available:\n %"

    .line 383
    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/an;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 388
    :cond_a
    :goto_7
    sget-object p1, Lcom/tencent/bugly/beta/Beta;->canShowUpgradeActs:Ljava/util/List;

    if-eqz p1, :cond_d

    sget-object p1, Lcom/tencent/bugly/beta/Beta;->canShowUpgradeActs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_d

    .line 389
    sget-object p1, Lcom/tencent/bugly/beta/Beta;->canShowUpgradeActs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    if-eqz v3, :cond_b

    .line 391
    iget-object v4, v1, Lcom/tencent/bugly/beta/global/e;->m:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_c
    const-string p1, "setted canShowUpgradeActs: %s"

    .line 394
    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, v1, Lcom/tencent/bugly/beta/global/e;->m:Ljava/util/List;

    aput-object v4, v3, v2

    invoke-static {p1, v3}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 398
    :cond_d
    sget-object p1, Lcom/tencent/bugly/beta/Beta;->canNotShowUpgradeActs:Ljava/util/List;

    if-eqz p1, :cond_10

    sget-object p1, Lcom/tencent/bugly/beta/Beta;->canNotShowUpgradeActs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_10

    .line 399
    sget-object p1, Lcom/tencent/bugly/beta/Beta;->canNotShowUpgradeActs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    if-eqz v3, :cond_e

    .line 401
    iget-object v4, v1, Lcom/tencent/bugly/beta/global/e;->n:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_f
    const-string p1, "setted canNotShowUpgradeActs: %s"

    .line 404
    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, v1, Lcom/tencent/bugly/beta/global/e;->n:Ljava/util/List;

    aput-object v4, v3, v2

    invoke-static {p1, v3}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 408
    :cond_10
    sget-boolean p1, Lcom/tencent/bugly/beta/Beta;->autoCheckUpgrade:Z

    iput-boolean p1, v1, Lcom/tencent/bugly/beta/global/e;->d:Z

    const-string p1, "autoCheckUpgrade %s"

    .line 409
    new-array v3, v5, [Ljava/lang/Object;

    iget-boolean v4, v1, Lcom/tencent/bugly/beta/global/e;->d:Z

    if-eqz v4, :cond_11

    const-string v4, "is opened"

    goto :goto_a

    :cond_11
    const-string v4, "is closed"

    :goto_a
    aput-object v4, v3, v2

    invoke-static {p1, v3}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 412
    sget-boolean p1, Lcom/tencent/bugly/beta/Beta;->autoInstallApk:Z

    iput-boolean p1, v1, Lcom/tencent/bugly/beta/global/e;->ad:Z

    const-string p1, "autoInstallApk %s"

    .line 413
    new-array v3, v5, [Ljava/lang/Object;

    iget-boolean v4, v1, Lcom/tencent/bugly/beta/global/e;->ad:Z

    if-eqz v4, :cond_12

    const-string v4, "is opened"

    goto :goto_b

    :cond_12
    const-string v4, "is closed"

    :goto_b
    aput-object v4, v3, v2

    invoke-static {p1, v3}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 416
    sget-boolean p1, Lcom/tencent/bugly/beta/Beta;->autoDownloadOn4g:Z

    iput-boolean p1, v1, Lcom/tencent/bugly/beta/global/e;->T:Z

    const-string p1, "autoDownloadOn4g %s"

    .line 417
    new-array v3, v5, [Ljava/lang/Object;

    iget-boolean v4, v1, Lcom/tencent/bugly/beta/global/e;->T:Z

    if-eqz v4, :cond_13

    const-string v4, "is opened"

    goto :goto_c

    :cond_13
    const-string v4, "is closed"

    :goto_c
    aput-object v4, v3, v2

    invoke-static {p1, v3}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 419
    sget-boolean p1, Lcom/tencent/bugly/beta/Beta;->showInterruptedStrategy:Z

    iput-boolean p1, v1, Lcom/tencent/bugly/beta/global/e;->e:Z

    const-string p1, "showInterruptedStrategy %s"

    .line 420
    new-array v3, v5, [Ljava/lang/Object;

    iget-boolean v4, v1, Lcom/tencent/bugly/beta/global/e;->e:Z

    if-eqz v4, :cond_14

    const-string v4, "is opened"

    goto :goto_d

    :cond_14
    const-string v4, "is closed"

    :goto_d
    aput-object v4, v3, v2

    invoke-static {p1, v3}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string p1, "isDIY %s"

    .line 423
    new-array v3, v5, [Ljava/lang/Object;

    sget-object v4, Lcom/tencent/bugly/beta/Beta;->upgradeListener:Lcom/tencent/bugly/beta/upgrade/UpgradeListener;

    if-eqz v4, :cond_15

    const-string v4, "is opened"

    goto :goto_e

    :cond_15
    const-string v4, "is closed"

    :goto_e
    aput-object v4, v3, v2

    invoke-static {p1, v3}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 425
    sget-object p1, Lcom/tencent/bugly/beta/Beta;->storageDir:Ljava/io/File;

    if-eqz p1, :cond_17

    .line 426
    sget-object p1, Lcom/tencent/bugly/beta/Beta;->storageDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_16

    sget-object p1, Lcom/tencent/bugly/beta/Beta;->storageDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_16

    const-string p1, "storageDir is not exists: %s"

    .line 427
    new-array v3, v5, [Ljava/lang/Object;

    sget-object v4, Lcom/tencent/bugly/beta/Beta;->storageDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {p1, v3}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_f

    .line 429
    :cond_16
    sget-object p1, Lcom/tencent/bugly/beta/Beta;->storageDir:Ljava/io/File;

    iput-object p1, v1, Lcom/tencent/bugly/beta/global/e;->l:Ljava/io/File;

    const-string p1, "setted storageDir: %s"

    .line 430
    new-array v3, v5, [Ljava/lang/Object;

    sget-object v4, Lcom/tencent/bugly/beta/Beta;->storageDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {p1, v3}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 435
    :cond_17
    :goto_f
    iget-object p1, v1, Lcom/tencent/bugly/beta/global/e;->p:Lcom/tencent/bugly/beta/download/b;

    if-nez p1, :cond_18

    .line 436
    sget-object p1, Lcom/tencent/bugly/proguard/s;->a:Lcom/tencent/bugly/proguard/s;

    iput-object p1, v1, Lcom/tencent/bugly/beta/global/e;->p:Lcom/tencent/bugly/beta/download/b;

    .line 439
    :cond_18
    iget-object p1, v1, Lcom/tencent/bugly/beta/global/e;->u:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 440
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/bugly/crashreport/common/info/a;->f()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/tencent/bugly/beta/global/e;->u:Ljava/lang/String;

    .line 444
    :cond_19
    sget-boolean p1, Lcom/tencent/bugly/beta/Beta;->enableNotification:Z

    iput-boolean p1, v1, Lcom/tencent/bugly/beta/global/e;->R:Z

    const-string p1, "enableNotification %s"

    .line 445
    new-array v3, v5, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v6, Lcom/tencent/bugly/beta/Beta;->enableNotification:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {p1, v3}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 448
    sget-boolean p1, Lcom/tencent/bugly/beta/Beta;->autoDownloadOnWifi:Z

    iput-boolean p1, v1, Lcom/tencent/bugly/beta/global/e;->S:Z

    const-string p1, "autoDownloadOnWifi %s"

    .line 449
    new-array v3, v5, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v6, Lcom/tencent/bugly/beta/Beta;->autoDownloadOnWifi:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {p1, v3}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 452
    sget-boolean p1, Lcom/tencent/bugly/beta/Beta;->canShowApkInfo:Z

    iput-boolean p1, v1, Lcom/tencent/bugly/beta/global/e;->U:Z

    const-string p1, "canShowApkInfo %s"

    .line 453
    new-array v3, v5, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v6, Lcom/tencent/bugly/beta/Beta;->canShowApkInfo:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {p1, v3}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 456
    sget-boolean p1, Lcom/tencent/bugly/beta/Beta;->canAutoPatch:Z

    iput-boolean p1, v1, Lcom/tencent/bugly/beta/global/e;->V:Z

    const-string p1, "canAutoPatch %s"

    .line 457
    new-array v3, v5, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v6, Lcom/tencent/bugly/beta/Beta;->canAutoPatch:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {p1, v3}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 460
    sget-object p1, Lcom/tencent/bugly/beta/Beta;->betaPatchListener:Lcom/tencent/bugly/beta/interfaces/BetaPatchListener;

    iput-object p1, v1, Lcom/tencent/bugly/beta/global/e;->W:Lcom/tencent/bugly/beta/interfaces/BetaPatchListener;

    .line 463
    sget-object p1, Lcom/tencent/bugly/beta/Beta;->appVersionName:Ljava/lang/String;

    iput-object p1, v1, Lcom/tencent/bugly/beta/global/e;->x:Ljava/lang/String;

    .line 464
    sget p1, Lcom/tencent/bugly/beta/Beta;->appVersionCode:I

    iput p1, v1, Lcom/tencent/bugly/beta/global/e;->w:I

    .line 467
    sget-boolean p1, Lcom/tencent/bugly/beta/Beta;->canNotifyUserRestart:Z

    iput-boolean p1, v1, Lcom/tencent/bugly/beta/global/e;->X:Z

    const-string p1, "canNotifyUserRestart %s"

    .line 468
    new-array v3, v5, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v6, Lcom/tencent/bugly/beta/Beta;->canNotifyUserRestart:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {p1, v3}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 471
    sget-boolean p1, Lcom/tencent/bugly/beta/Beta;->canAutoDownloadPatch:Z

    iput-boolean p1, v1, Lcom/tencent/bugly/beta/global/e;->Y:Z

    const-string p1, "canAutoDownloadPatch %s"

    .line 472
    new-array v3, v5, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v6, Lcom/tencent/bugly/beta/Beta;->canAutoDownloadPatch:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {p1, v3}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 475
    sget-boolean p1, Lcom/tencent/bugly/beta/Beta;->enableHotfix:Z

    iput-boolean p1, v1, Lcom/tencent/bugly/beta/global/e;->Z:Z

    const-string p1, "enableHotfix %s"

    .line 476
    new-array v3, v5, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v6, Lcom/tencent/bugly/beta/Beta;->enableHotfix:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {p1, v3}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 479
    sget-boolean p1, Lcom/tencent/bugly/beta/Beta;->setPatchRestartOnScreenOff:Z

    invoke-static {p1}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->setPatchRestartOnScreenOff(Z)V

    const-string p1, "setPatchRestartOnScreenOff %s"

    .line 480
    new-array v3, v5, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v6, Lcom/tencent/bugly/beta/Beta;->setPatchRestartOnScreenOff:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {p1, v3}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 483
    sget-object p1, Lcom/tencent/bugly/beta/Beta;->soBlackList:Ljava/util/List;

    if-eqz p1, :cond_1c

    sget-object p1, Lcom/tencent/bugly/beta/Beta;->soBlackList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1c

    .line 484
    sget-object p1, Lcom/tencent/bugly/beta/Beta;->soBlackList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1a
    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1a

    .line 486
    iget-object v4, v1, Lcom/tencent/bugly/beta/global/e;->aa:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_1b
    const-string p1, "setted soBlackList: %s"

    .line 489
    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, v1, Lcom/tencent/bugly/beta/global/e;->aa:Ljava/util/List;

    aput-object v4, v3, v2

    invoke-static {p1, v3}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 492
    :cond_1c
    sget-object p1, Lcom/tencent/bugly/beta/Beta;->appChannel:Ljava/lang/String;

    if-eqz p1, :cond_1d

    .line 493
    sget-object p1, Lcom/tencent/bugly/beta/Beta;->appChannel:Ljava/lang/String;

    iput-object p1, v1, Lcom/tencent/bugly/beta/global/e;->P:Ljava/lang/String;

    const-string p1, "Beta channel %s"

    .line 494
    new-array v3, v5, [Ljava/lang/Object;

    sget-object v4, Lcom/tencent/bugly/beta/Beta;->appChannel:Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-static {p1, v3}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 497
    :cond_1d
    invoke-virtual {v1, p0}, Lcom/tencent/bugly/beta/global/e;->a(Landroid/content/Context;)V

    const-string p1, "rb.bch"

    .line 500
    sget-object v3, Lcom/tencent/bugly/beta/global/ResBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v3}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/tencent/bugly/beta/global/ResBean;

    sput-object p1, Lcom/tencent/bugly/beta/global/ResBean;->a:Lcom/tencent/bugly/beta/global/ResBean;

    .line 501
    sget-object p1, Lcom/tencent/bugly/beta/global/ResBean;->a:Lcom/tencent/bugly/beta/global/ResBean;

    if-nez p1, :cond_1e

    .line 502
    new-instance p1, Lcom/tencent/bugly/beta/global/ResBean;

    invoke-direct {p1}, Lcom/tencent/bugly/beta/global/ResBean;-><init>()V

    sput-object p1, Lcom/tencent/bugly/beta/global/ResBean;->a:Lcom/tencent/bugly/beta/global/ResBean;

    .line 505
    :cond_1e
    sget-object p1, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    sget-object v3, Lcom/tencent/bugly/beta/Beta;->upgradeListener:Lcom/tencent/bugly/beta/upgrade/UpgradeListener;

    iput-object v3, p1, Lcom/tencent/bugly/beta/upgrade/c;->e:Lcom/tencent/bugly/beta/upgrade/UpgradeListener;

    .line 506
    sget-object p1, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    sget-object v3, Lcom/tencent/bugly/beta/Beta;->upgradeStateListener:Lcom/tencent/bugly/beta/upgrade/UpgradeStateListener;

    iput-object v3, p1, Lcom/tencent/bugly/beta/upgrade/c;->f:Lcom/tencent/bugly/beta/upgrade/UpgradeStateListener;

    .line 508
    sget-object p1, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    sget-object v3, Lcom/tencent/bugly/beta/Beta;->downloadListener:Lcom/tencent/bugly/beta/download/DownloadListener;

    iput-object v3, p1, Lcom/tencent/bugly/beta/upgrade/c;->d:Lcom/tencent/bugly/beta/download/DownloadListener;

    .line 510
    invoke-static {}, Lcom/tencent/bugly/beta/Beta;->getStrategyTask()Lcom/tencent/bugly/beta/download/DownloadTask;

    move-result-object p1

    if-eqz p1, :cond_1f

    sget-object p1, Lcom/tencent/bugly/beta/Beta;->downloadListener:Lcom/tencent/bugly/beta/download/DownloadListener;

    if-eqz p1, :cond_1f

    .line 511
    invoke-static {}, Lcom/tencent/bugly/beta/Beta;->getStrategyTask()Lcom/tencent/bugly/beta/download/DownloadTask;

    move-result-object p1

    sget-object v3, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-object v3, v3, Lcom/tencent/bugly/beta/upgrade/c;->d:Lcom/tencent/bugly/beta/download/DownloadListener;

    invoke-virtual {p1, v3}, Lcom/tencent/bugly/beta/download/DownloadTask;->addListener(Lcom/tencent/bugly/beta/download/DownloadListener;)V

    .line 514
    :cond_1f
    sget-boolean p1, Lcom/tencent/bugly/beta/Beta;->enableHotfix:Z

    if-eqz p1, :cond_20

    const-string p1, "enableHotfix %s"

    .line 515
    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "1"

    aput-object v4, v3, v2

    invoke-static {p1, v3}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string p1, "D4"

    const-string v3, "1"

    .line 516
    invoke-static {p1, v3}, Lcom/tencent/bugly/proguard/ap;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    invoke-static {p0}, Lcom/tencent/bugly/proguard/r;->a(Landroid/content/Context;)V

    .line 522
    :cond_20
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 523
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 524
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .line 525
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    iput-object v6, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 527
    iget-object v6, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_21

    iget-object v6, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 529
    :cond_21
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/tencent/bugly/beta/R$string;->strToastYourAreTheLatestVersion:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/tencent/bugly/beta/Beta;->strToastYourAreTheLatestVersion:Ljava/lang/String;

    .line 531
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/tencent/bugly/beta/R$string;->strToastCheckUpgradeError:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/tencent/bugly/beta/Beta;->strToastCheckUpgradeError:Ljava/lang/String;

    .line 533
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/tencent/bugly/beta/R$string;->strToastCheckingUpgrade:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/tencent/bugly/beta/Beta;->strToastCheckingUpgrade:Ljava/lang/String;

    .line 535
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/tencent/bugly/beta/R$string;->strNotificationDownloading:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/tencent/bugly/beta/Beta;->strNotificationDownloading:Ljava/lang/String;

    .line 537
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/tencent/bugly/beta/R$string;->strNotificationClickToView:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/tencent/bugly/beta/Beta;->strNotificationClickToView:Ljava/lang/String;

    .line 539
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/tencent/bugly/beta/R$string;->strNotificationClickToInstall:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/tencent/bugly/beta/Beta;->strNotificationClickToInstall:Ljava/lang/String;

    .line 541
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/tencent/bugly/beta/R$string;->strNotificationClickToContinue:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/tencent/bugly/beta/Beta;->strNotificationClickToContinue:Ljava/lang/String;

    .line 543
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/tencent/bugly/beta/R$string;->strNotificationClickToRetry:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/tencent/bugly/beta/Beta;->strNotificationClickToRetry:Ljava/lang/String;

    .line 545
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/tencent/bugly/beta/R$string;->strNotificationDownloadSucc:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/tencent/bugly/beta/Beta;->strNotificationDownloadSucc:Ljava/lang/String;

    .line 547
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/tencent/bugly/beta/R$string;->strNotificationDownloadError:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/tencent/bugly/beta/Beta;->strNotificationDownloadError:Ljava/lang/String;

    .line 549
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/tencent/bugly/beta/R$string;->strNotificationHaveNewVersion:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/tencent/bugly/beta/Beta;->strNotificationHaveNewVersion:Ljava/lang/String;

    .line 551
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/tencent/bugly/beta/R$string;->strNetworkTipsMessage:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/tencent/bugly/beta/Beta;->strNetworkTipsMessage:Ljava/lang/String;

    .line 553
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/tencent/bugly/beta/R$string;->strNetworkTipsTitle:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/tencent/bugly/beta/Beta;->strNetworkTipsTitle:Ljava/lang/String;

    .line 555
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/tencent/bugly/beta/R$string;->strNetworkTipsConfirmBtn:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/tencent/bugly/beta/Beta;->strNetworkTipsConfirmBtn:Ljava/lang/String;

    .line 557
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/tencent/bugly/beta/R$string;->strNetworkTipsCancelBtn:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/tencent/bugly/beta/Beta;->strNetworkTipsCancelBtn:Ljava/lang/String;

    .line 559
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/tencent/bugly/beta/R$string;->strUpgradeDialogVersionLabel:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/tencent/bugly/beta/Beta;->strUpgradeDialogVersionLabel:Ljava/lang/String;

    .line 561
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/tencent/bugly/beta/R$string;->strUpgradeDialogFileSizeLabel:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/tencent/bugly/beta/Beta;->strUpgradeDialogFileSizeLabel:Ljava/lang/String;

    .line 563
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/tencent/bugly/beta/R$string;->strUpgradeDialogUpdateTimeLabel:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/tencent/bugly/beta/Beta;->strUpgradeDialogUpdateTimeLabel:Ljava/lang/String;

    .line 565
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/tencent/bugly/beta/R$string;->strUpgradeDialogFeatureLabel:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/tencent/bugly/beta/Beta;->strUpgradeDialogFeatureLabel:Ljava/lang/String;

    .line 567
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/tencent/bugly/beta/R$string;->strUpgradeDialogUpgradeBtn:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/tencent/bugly/beta/Beta;->strUpgradeDialogUpgradeBtn:Ljava/lang/String;

    .line 569
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/tencent/bugly/beta/R$string;->strUpgradeDialogInstallBtn:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/tencent/bugly/beta/Beta;->strUpgradeDialogInstallBtn:Ljava/lang/String;

    .line 571
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/tencent/bugly/beta/R$string;->strUpgradeDialogRetryBtn:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/tencent/bugly/beta/Beta;->strUpgradeDialogRetryBtn:Ljava/lang/String;

    .line 573
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/tencent/bugly/beta/R$string;->strUpgradeDialogContinueBtn:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/tencent/bugly/beta/Beta;->strUpgradeDialogContinueBtn:Ljava/lang/String;

    .line 575
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v6, Lcom/tencent/bugly/beta/R$string;->strUpgradeDialogCancelBtn:I

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tencent/bugly/beta/Beta;->strUpgradeDialogCancelBtn:Ljava/lang/String;

    .line 578
    :cond_22
    invoke-virtual {p1, v4, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 581
    invoke-static {}, Lcom/tencent/bugly/proguard/am;->a()Lcom/tencent/bugly/proguard/am;

    move-result-object p0

    new-instance p1, Lcom/tencent/bugly/beta/global/d;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-direct {p1, v5, v3}, Lcom/tencent/bugly/beta/global/d;-><init>(I[Ljava/lang/Object;)V

    iget-wide v3, v1, Lcom/tencent/bugly/beta/global/e;->b:J

    invoke-virtual {p0, p1, v3, v4}, Lcom/tencent/bugly/proguard/am;->a(Ljava/lang/Runnable;J)Z

    .line 585
    invoke-static {}, Lcom/tencent/bugly/proguard/ac;->a()Lcom/tencent/bugly/proguard/ac;

    move-result-object p0

    sget-object p1, Lcom/tencent/bugly/beta/Beta;->instance:Lcom/tencent/bugly/beta/Beta;

    iget p1, p1, Lcom/tencent/bugly/beta/Beta;->id:I

    sget v1, Lcom/tencent/bugly/beta/global/e;->a:I

    sub-int/2addr v1, v5

    sput v1, Lcom/tencent/bugly/beta/global/e;->a:I

    invoke-virtual {p0, p1, v1}, Lcom/tencent/bugly/proguard/ac;->a(II)V

    const-string p0, "Beta init finished..."

    .line 586
    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 587
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 270
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized installApk(Ljava/io/File;)V
    .locals 14

    const-class v0, Lcom/tencent/bugly/beta/Beta;

    monitor-enter v0

    .line 887
    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/beta/Beta;->getUpgradeStrategy()Lcom/tencent/bugly/proguard/y;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 888
    sget-object v2, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v2, v2, Lcom/tencent/bugly/beta/global/e;->s:Landroid/content/Context;

    iget-object v3, v1, Lcom/tencent/bugly/proguard/y;->f:Lcom/tencent/bugly/proguard/u;

    iget-object v3, v3, Lcom/tencent/bugly/proguard/u;->a:Ljava/lang/String;

    invoke-static {v2, p0, v3}, Lcom/tencent/bugly/beta/global/a;->a(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 891
    sget-object p0, Lcom/tencent/bugly/proguard/p;->a:Lcom/tencent/bugly/proguard/p;

    new-instance v13, Lcom/tencent/bugly/proguard/w;

    const-string v3, "install"

    .line 892
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    iget-object v9, v1, Lcom/tencent/bugly/proguard/y;->e:Lcom/tencent/bugly/proguard/v;

    iget-object v10, v1, Lcom/tencent/bugly/proguard/y;->m:Ljava/lang/String;

    iget v11, v1, Lcom/tencent/bugly/proguard/y;->p:I

    const/4 v12, 0x0

    move-object v2, v13

    invoke-direct/range {v2 .. v12}, Lcom/tencent/bugly/proguard/w;-><init>(Ljava/lang/String;JBJLcom/tencent/bugly/proguard/v;Ljava/lang/String;ILjava/util/Map;)V

    .line 891
    invoke-virtual {p0, v13}, Lcom/tencent/bugly/proguard/p;->a(Lcom/tencent/bugly/proguard/w;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 898
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 900
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    .line 886
    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static installTinker()V
    .locals 1

    const/4 v0, 0x1

    .line 969
    sput-boolean v0, Lcom/tencent/bugly/beta/Beta;->enableHotfix:Z

    .line 970
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerApplicationLike;->getTinkerPatchApplicationLike()Lcom/tencent/tinker/loader/app/ApplicationLike;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/beta/Beta;->installTinker(Ljava/lang/Object;)V

    return-void
.end method

.method public static installTinker(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    .line 980
    sput-boolean v0, Lcom/tencent/bugly/beta/Beta;->enableHotfix:Z

    .line 981
    invoke-static {p0}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->installTinker(Ljava/lang/Object;)V

    return-void
.end method

.method public static installTinker(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerPatchResultListener;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    .line 998
    sput-boolean v0, Lcom/tencent/bugly/beta/Beta;->enableHotfix:Z

    .line 999
    invoke-static/range {p0 .. p5}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->installTinker(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerPatchResultListener;Ljava/lang/Object;)V

    return-void
.end method

.method public static loadArmLibrary(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1019
    invoke-static {p0, p1}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->loadArmLibrary(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static loadArmV7Library(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1030
    invoke-static {p0, p1}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->loadArmV7Library(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static loadLibrary(Ljava/lang/String;)V
    .locals 6

    .line 1050
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    const/4 v1, 0x0

    if-eqz p0, :cond_3

    .line 1053
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "LoadSoFileResult"

    const/4 v3, 0x1

    .line 1058
    invoke-static {v2, v3}, Lcom/tencent/bugly/beta/global/a;->b(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "LoadSoFileResult"

    .line 1061
    invoke-static {v2, v1}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;Z)V

    const-string v2, ""

    .line 1064
    invoke-static {p0, v2}, Lcom/tencent/bugly/beta/global/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "PatchResult"

    .line 1065
    invoke-static {v4, v1}, Lcom/tencent/bugly/beta/global/a;->b(Ljava/lang/String;Z)Z

    move-result v4

    .line 1067
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v4, :cond_1

    .line 1069
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lib/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1070
    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->s:Landroid/content/Context;

    invoke-static {v0, v2, p0}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->loadLibraryFromTinker(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1072
    :cond_1
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    :goto_0
    const-string p0, "LoadSoFileResult"

    .line 1075
    invoke-static {p0, v3}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;Z)V

    goto :goto_3

    .line 1077
    :cond_2
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string p0, "IS_PATCH_ROLL_BACK"

    .line 1079
    invoke-static {p0, v3}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;Z)V

    .line 1082
    invoke-static {v3}, Lcom/tencent/bugly/beta/Beta;->cleanTinkerPatch(Z)V

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_3
    :goto_1
    const-string p0, "libName is invalid"

    .line 1054
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/an;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1085
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "LoadSoFileResult"

    .line 1086
    invoke-static {p0, v1}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;Z)V

    :goto_3
    return-void
.end method

.method public static loadLibraryFromTinker(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1041
    invoke-static {p0, p1, p2}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->loadLibraryFromTinker(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized onUpgradeReceived(Ljava/lang/String;ILjava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;IIJLjava/lang/String;ZZILjava/lang/String;J)V
    .locals 31

    const-class v1, Lcom/tencent/bugly/beta/Beta;

    monitor-enter v1

    .line 847
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "IMG_title"

    move-object/from16 v3, p12

    .line 848
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "VAL_style"

    .line 849
    invoke-static/range {p13 .. p13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    new-instance v22, Lcom/tencent/bugly/proguard/y;

    const/4 v7, 0x0

    new-instance v23, Lcom/tencent/bugly/proguard/v;

    sget-object v2, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v9, v2, Lcom/tencent/bugly/beta/global/e;->u:Ljava/lang/String;

    const/4 v10, 0x1

    const-string v14, ""

    const-wide/16 v15, 0x1

    const-string v17, ""

    const-string v19, ""

    const-string v20, ""

    move-object/from16 v8, v23

    move/from16 v11, p6

    move-object/from16 v12, p7

    move/from16 v13, p5

    move-object/from16 v18, p11

    invoke-direct/range {v8 .. v20}, Lcom/tencent/bugly/proguard/v;-><init>(Ljava/lang/String;BILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/tencent/bugly/proguard/u;

    const-string v27, ""

    const-string v30, ""

    move-object/from16 v24, v9

    move-object/from16 v25, p11

    move-object/from16 v26, p8

    move-wide/from16 v28, p9

    invoke-direct/range {v24 .. v30}, Lcom/tencent/bugly/proguard/u;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    move/from16 v2, p1

    int-to-byte v10, v2

    const/4 v14, 0x0

    const-string v15, ""

    const/16 v18, 0x1

    const/16 v21, 0x1

    move-object/from16 v2, v22

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    move-object/from16 v8, v23

    move/from16 v11, p14

    move-wide/from16 v12, p15

    move-object/from16 v16, v0

    move-object/from16 v17, p17

    move-wide/from16 v19, p22

    invoke-direct/range {v2 .. v21}, Lcom/tencent/bugly/proguard/y;-><init>(Ljava/lang/String;Ljava/lang/String;JILcom/tencent/bugly/proguard/v;Lcom/tencent/bugly/proguard/u;BIJLcom/tencent/bugly/proguard/u;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;IJI)V

    .line 858
    sget-object v0, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    if-nez p21, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    move-object/from16 v2, p21

    :goto_0
    move-object/from16 p0, v0

    move/from16 p1, p18

    move/from16 p2, p19

    move/from16 p3, p20

    move-object/from16 p4, v22

    move-object/from16 p5, v2

    invoke-virtual/range {p0 .. p5}, Lcom/tencent/bugly/beta/upgrade/c;->a(ZZILcom/tencent/bugly/proguard/y;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 860
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    .line 846
    monitor-exit v1

    throw v0
.end method

.method public static registerDownloadListener(Lcom/tencent/bugly/beta/download/DownloadListener;)V
    .locals 1

    .line 680
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iput-object p0, v0, Lcom/tencent/bugly/beta/global/e;->q:Lcom/tencent/bugly/beta/download/DownloadListener;

    .line 682
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->q:Lcom/tencent/bugly/beta/download/DownloadListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    if-eqz v0, :cond_0

    .line 683
    sget-object v0, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    invoke-virtual {v0, p0}, Lcom/tencent/bugly/beta/download/DownloadTask;->addListener(Lcom/tencent/bugly/beta/download/DownloadListener;)V

    :cond_0
    return-void
.end method

.method public static declared-synchronized saveInstallEvent(Z)V
    .locals 14

    const-class v0, Lcom/tencent/bugly/beta/Beta;

    monitor-enter v0

    .line 909
    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/beta/Beta;->getUpgradeStrategy()Lcom/tencent/bugly/proguard/y;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    const-string p0, "installApkMd5"

    .line 912
    iget-object v2, v1, Lcom/tencent/bugly/proguard/y;->f:Lcom/tencent/bugly/proguard/u;

    iget-object v2, v2, Lcom/tencent/bugly/proguard/u;->a:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    sget-object p0, Lcom/tencent/bugly/proguard/p;->a:Lcom/tencent/bugly/proguard/p;

    new-instance v13, Lcom/tencent/bugly/proguard/w;

    const-string v3, "install"

    .line 915
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    iget-object v9, v1, Lcom/tencent/bugly/proguard/y;->e:Lcom/tencent/bugly/proguard/v;

    iget-object v10, v1, Lcom/tencent/bugly/proguard/y;->m:Ljava/lang/String;

    iget v11, v1, Lcom/tencent/bugly/proguard/y;->p:I

    const/4 v12, 0x0

    move-object v2, v13

    invoke-direct/range {v2 .. v12}, Lcom/tencent/bugly/proguard/w;-><init>(Ljava/lang/String;JBJLcom/tencent/bugly/proguard/v;Ljava/lang/String;ILjava/util/Map;)V

    .line 914
    invoke-virtual {p0, v13}, Lcom/tencent/bugly/proguard/p;->a(Lcom/tencent/bugly/proguard/w;)Z

    const-string p0, "\u5b89\u88c5\u4e8b\u4ef6\u4fdd\u5b58\u6210\u529f"

    const/4 v1, 0x0

    .line 919
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v1}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 922
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 924
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    .line 908
    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized showUpgradeDialog(Ljava/lang/String;ILjava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILcom/tencent/bugly/beta/download/DownloadListener;Ljava/lang/Runnable;Ljava/lang/Runnable;Z)V
    .locals 37

    const-class v1, Lcom/tencent/bugly/beta/Beta;

    monitor-enter v1

    .line 779
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "IMG_title"

    move-object/from16 v3, p12

    .line 780
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "VAL_style"

    .line 781
    invoke-static/range {p13 .. p13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    new-instance v15, Lcom/tencent/bugly/proguard/y;

    const/4 v7, 0x0

    new-instance v8, Lcom/tencent/bugly/proguard/v;

    sget-object v2, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v2, v2, Lcom/tencent/bugly/beta/global/e;->u:Ljava/lang/String;

    const/16 v18, 0x1

    const-string v22, ""

    const-wide/16 v23, 0x1

    const-string v25, ""

    const-string v27, "1.3.5"

    const-string v28, ""

    move-object/from16 v16, v8

    move-object/from16 v17, v2

    move/from16 v19, p6

    move-object/from16 v20, p7

    move/from16 v21, p5

    move-object/from16 v26, p11

    invoke-direct/range {v16 .. v28}, Lcom/tencent/bugly/proguard/v;-><init>(Ljava/lang/String;BILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/tencent/bugly/proguard/u;

    const-string v32, ""

    const-string v35, ""

    move-object/from16 v29, v9

    move-object/from16 v30, p11

    move-object/from16 v31, p8

    move-wide/from16 v33, p9

    invoke-direct/range {v29 .. v35}, Lcom/tencent/bugly/proguard/u;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    move/from16 v2, p1

    int-to-byte v10, v2

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const-string v16, ""

    const/16 v17, 0x0

    const/16 v18, 0x1

    .line 788
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    const/16 v21, 0x1

    move-object v2, v15

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    move-object/from16 v36, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v0

    invoke-direct/range {v2 .. v21}, Lcom/tencent/bugly/proguard/y;-><init>(Ljava/lang/String;Ljava/lang/String;JILcom/tencent/bugly/proguard/v;Lcom/tencent/bugly/proguard/u;BIJLcom/tencent/bugly/proguard/u;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;IJI)V

    .line 790
    sget-object v0, Lcom/tencent/bugly/beta/Beta;->a:Lcom/tencent/bugly/beta/download/DownloadTask;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/beta/Beta;->a:Lcom/tencent/bugly/beta/download/DownloadTask;

    invoke-virtual {v0}, Lcom/tencent/bugly/beta/download/DownloadTask;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v4, p8

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 791
    sget-object v0, Lcom/tencent/bugly/beta/Beta;->a:Lcom/tencent/bugly/beta/download/DownloadTask;

    invoke-virtual {v0, v3}, Lcom/tencent/bugly/beta/download/DownloadTask;->delete(Z)V

    .line 792
    sput-object v2, Lcom/tencent/bugly/beta/Beta;->a:Lcom/tencent/bugly/beta/download/DownloadTask;

    .line 794
    :cond_0
    sget-object v0, Lcom/tencent/bugly/beta/Beta;->a:Lcom/tencent/bugly/beta/download/DownloadTask;

    if-nez v0, :cond_1

    .line 795
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->p:Lcom/tencent/bugly/beta/download/b;

    move-object/from16 v4, v36

    iget-object v5, v4, Lcom/tencent/bugly/proguard/y;->f:Lcom/tencent/bugly/proguard/u;

    iget-object v5, v5, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    sget-object v6, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v6, v6, Lcom/tencent/bugly/beta/global/e;->t:Ljava/io/File;

    .line 797
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Lcom/tencent/bugly/proguard/y;->f:Lcom/tencent/bugly/proguard/u;

    iget-object v7, v7, Lcom/tencent/bugly/proguard/u;->a:Ljava/lang/String;

    .line 796
    invoke-interface {v0, v5, v6, v2, v7}, Lcom/tencent/bugly/beta/download/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/beta/download/DownloadTask;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/beta/Beta;->a:Lcom/tencent/bugly/beta/download/DownloadTask;

    goto :goto_0

    :cond_1
    move-object/from16 v4, v36

    .line 801
    :goto_0
    sget-object v0, Lcom/tencent/bugly/beta/Beta;->a:Lcom/tencent/bugly/beta/download/DownloadTask;

    move-object/from16 v2, p14

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/beta/download/DownloadTask;->addListener(Lcom/tencent/bugly/beta/download/DownloadListener;)V

    .line 802
    sget-object v0, Lcom/tencent/bugly/beta/ui/h;->v:Lcom/tencent/bugly/beta/ui/h;

    sget-object v2, Lcom/tencent/bugly/beta/Beta;->a:Lcom/tencent/bugly/beta/download/DownloadTask;

    invoke-virtual {v0, v4, v2}, Lcom/tencent/bugly/beta/ui/h;->a(Lcom/tencent/bugly/proguard/y;Lcom/tencent/bugly/beta/download/DownloadTask;)V

    .line 803
    sget-object v0, Lcom/tencent/bugly/beta/ui/h;->v:Lcom/tencent/bugly/beta/ui/h;

    move-object/from16 v2, p15

    iput-object v2, v0, Lcom/tencent/bugly/beta/ui/h;->r:Ljava/lang/Runnable;

    .line 804
    sget-object v0, Lcom/tencent/bugly/beta/ui/h;->v:Lcom/tencent/bugly/beta/ui/h;

    move-object/from16 v2, p16

    iput-object v2, v0, Lcom/tencent/bugly/beta/ui/h;->s:Ljava/lang/Runnable;

    .line 806
    sget-object v0, Lcom/tencent/bugly/beta/global/f;->a:Lcom/tencent/bugly/beta/global/f;

    sget-object v2, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v2, v2, Lcom/tencent/bugly/beta/global/e;->p:Lcom/tencent/bugly/beta/download/b;

    iget-object v5, v4, Lcom/tencent/bugly/proguard/y;->l:Ljava/util/Map;

    invoke-virtual {v0, v2, v5}, Lcom/tencent/bugly/beta/global/f;->a(Lcom/tencent/bugly/beta/download/b;Ljava/util/Map;)V

    const/4 v0, 0x0

    const/4 v2, 0x2

    if-eqz p17, :cond_3

    .line 809
    sget-object v5, Lcom/tencent/bugly/beta/global/f;->a:Lcom/tencent/bugly/beta/global/f;

    new-instance v6, Lcom/tencent/bugly/beta/global/d;

    new-array v7, v2, [Ljava/lang/Object;

    sget-object v8, Lcom/tencent/bugly/beta/ui/h;->v:Lcom/tencent/bugly/beta/ui/h;

    aput-object v8, v7, v0

    iget-byte v4, v4, Lcom/tencent/bugly/proguard/y;->g:B

    if-ne v4, v2, :cond_2

    const/4 v0, 0x1

    .line 810
    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v7, v3

    invoke-direct {v6, v2, v7}, Lcom/tencent/bugly/beta/global/d;-><init>(I[Ljava/lang/Object;)V

    const/16 v0, 0xbb8

    .line 809
    invoke-virtual {v5, v6, v0}, Lcom/tencent/bugly/beta/global/f;->a(Ljava/lang/Runnable;I)V

    goto :goto_1

    .line 813
    :cond_3
    sget-object v5, Lcom/tencent/bugly/beta/global/f;->a:Lcom/tencent/bugly/beta/global/f;

    new-instance v6, Lcom/tencent/bugly/beta/global/d;

    new-array v7, v2, [Ljava/lang/Object;

    sget-object v8, Lcom/tencent/bugly/beta/ui/h;->v:Lcom/tencent/bugly/beta/ui/h;

    aput-object v8, v7, v0

    iget-byte v4, v4, Lcom/tencent/bugly/proguard/y;->g:B

    if-ne v4, v2, :cond_4

    const/4 v0, 0x1

    .line 814
    :cond_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v7, v3

    invoke-direct {v6, v2, v7}, Lcom/tencent/bugly/beta/global/d;-><init>(I[Ljava/lang/Object;)V

    .line 813
    invoke-virtual {v5, v6}, Lcom/tencent/bugly/beta/global/f;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 816
    :goto_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    .line 778
    monitor-exit v1

    throw v0
.end method

.method public static startDownload()Lcom/tencent/bugly/beta/download/DownloadTask;
    .locals 6

    .line 705
    sget-object v0, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/c;->h:Lcom/tencent/bugly/beta/global/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/c;->h:Lcom/tencent/bugly/beta/global/d;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    aget-object v0, v0, v1

    sget-object v2, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-object v2, v2, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    if-eq v0, v2, :cond_1

    .line 707
    :cond_0
    sget-object v0, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    new-instance v2, Lcom/tencent/bugly/beta/global/d;

    const/16 v3, 0xd

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-object v5, v5, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    aput-object v5, v4, v1

    const/4 v1, 0x1

    sget-object v5, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-object v5, v5, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    aput-object v5, v4, v1

    invoke-direct {v2, v3, v4}, Lcom/tencent/bugly/beta/global/d;-><init>(I[Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/tencent/bugly/beta/upgrade/c;->h:Lcom/tencent/bugly/beta/global/d;

    .line 710
    :cond_1
    sget-object v0, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/c;->h:Lcom/tencent/bugly/beta/global/d;

    invoke-virtual {v0}, Lcom/tencent/bugly/beta/global/d;->run()V

    .line 711
    sget-object v0, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    return-object v0
.end method

.method public static unInit()V
    .locals 2

    const-string v0, "IS_PATCH_ROLL_BACK"

    const/4 v1, 0x0

    .line 1095
    invoke-static {v0, v1}, Lcom/tencent/bugly/beta/global/a;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "IS_PATCH_ROLL_BACK"

    .line 1096
    invoke-static {v0, v1}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;Z)V

    .line 1097
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->getInstance()Lcom/tencent/bugly/beta/tinker/TinkerManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->cleanPatch(Z)V

    :cond_0
    return-void
.end method

.method public static unregisterDownloadListener()V
    .locals 2

    .line 692
    sget-object v0, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    if-eqz v0, :cond_0

    .line 693
    sget-object v0, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    sget-object v1, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v1, v1, Lcom/tencent/bugly/beta/global/e;->q:Lcom/tencent/bugly/beta/download/DownloadListener;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/beta/download/DownloadTask;->removeListener(Lcom/tencent/bugly/beta/download/DownloadListener;)Z

    .line 695
    :cond_0
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tencent/bugly/beta/global/e;->q:Lcom/tencent/bugly/beta/download/DownloadListener;

    return-void
.end method


# virtual methods
.method public getTables()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    .line 600
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "dl_1002"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "ge_1002"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "st_1002"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public declared-synchronized init(Landroid/content/Context;ZLcom/tencent/bugly/BuglyStrategy;)V
    .locals 2

    monitor-enter p0

    .line 591
    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object p3

    const-string v0, "G10"

    const-string v1, "1.3.5"

    invoke-virtual {p3, v0, v1}, Lcom/tencent/bugly/crashreport/common/info/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    sget-boolean p3, Lcom/tencent/bugly/beta/Beta;->autoInit:Z

    if-eqz p3, :cond_0

    .line 594
    invoke-static {p1, p2}, Lcom/tencent/bugly/beta/Beta;->init(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 590
    monitor-exit p0

    throw p1
.end method

.method public onDbDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method

.method public onDbUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 10

    :goto_0
    if-ge p2, p3, :cond_9

    const/16 v0, 0xa

    if-eq p2, v0, :cond_0

    goto/16 :goto_5

    .line 617
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 618
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v2, " CREATE TABLE  IF NOT EXISTS "

    .line 619
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "st_1002"

    .line 620
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ( "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_id"

    .line 621
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "integer"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , "

    .line 622
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_tp"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "text"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , "

    .line 623
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_tm"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "int"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , "

    .line 624
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_dt"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "blob"

    .line 625
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",primary key("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_id"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    .line 626
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_tp"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " )) "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "create %s"

    const/4 v3, 0x1

    .line 627
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/an;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 628
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 630
    invoke-static {v0}, Lcom/tencent/bugly/proguard/an;->b(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 631
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    const/4 v0, 0x0

    :try_start_1
    const-string v4, "_id = 1002"

    const-string v2, "t_pf"

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    .line 637
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_3

    if-eqz v1, :cond_2

    .line 658
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void

    .line 641
    :cond_3
    :goto_2
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 642
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "_id"

    .line 643
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_4

    const-string v3, "_id"

    const-string v4, "_id"

    .line 644
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_4
    const-string v3, "_tm"

    const-string v4, "_tm"

    .line 646
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "_tp"

    const-string v4, "_tp"

    .line 647
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "_dt"

    const-string v4, "_dt"

    .line 648
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v3, "st_1002"

    .line 649
    invoke-virtual {p1, v3, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_7

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v1, v0

    goto :goto_6

    :catch_2
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    .line 653
    :goto_3
    :try_start_3
    invoke-static {v0}, Lcom/tencent/bugly/proguard/an;->b(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 654
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_6
    if-eqz v1, :cond_7

    .line 658
    :goto_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    :goto_5
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    :catchall_1
    move-exception p1

    :goto_6
    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    throw p1

    :cond_9
    return-void
.end method
