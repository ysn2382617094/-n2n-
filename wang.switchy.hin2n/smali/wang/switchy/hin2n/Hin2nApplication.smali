.class public Lwang/switchy/hin2n/Hin2nApplication;
.super Landroid/support/multidex/MultiDexApplication;
.source "Hin2nApplication.java"


# static fields
.field public static instance:Lwang/switchy/hin2n/Hin2nApplication;


# instance fields
.field public AppContext:Landroid/content/Context;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private mDaoMaster:Lwang/switchy/hin2n/storage/db/base/DaoMaster;

.field private mDaoSession:Lwang/switchy/hin2n/storage/db/base/DaoSession;

.field private mHelper:Lwang/switchy/hin2n/storage/db/base/DaoMaster$DevOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "slog"

    .line 37
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "uip"

    .line 38
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "n2n_v2s"

    .line 39
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "n2n_v2"

    .line 40
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "n2n_v1"

    .line 41
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "edge_v2s"

    .line 42
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "edge_v2"

    .line 43
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "edge_v1"

    .line 44
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "edge_jni"

    .line 45
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/support/multidex/MultiDexApplication;-><init>()V

    return-void
.end method

.method private createNotificationChannel(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    const-string v0, "notification"

    .line 107
    invoke-virtual {p0, v0}, Lwang/switchy/hin2n/Hin2nApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 108
    new-instance v1, Landroid/app/NotificationChannel;

    invoke-direct {v1, p1, p2, p3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method public static getInstance()Lwang/switchy/hin2n/Hin2nApplication;
    .locals 1

    .line 77
    sget-object v0, Lwang/switchy/hin2n/Hin2nApplication;->instance:Lwang/switchy/hin2n/Hin2nApplication;

    return-object v0
.end method

.method private initNotificationChannel()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    const v0, 0x7f0d005d

    .line 100
    invoke-virtual {p0, v0}, Lwang/switchy/hin2n/Hin2nApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0d005e

    .line 101
    invoke-virtual {p0, v1}, Lwang/switchy/hin2n/Hin2nApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    .line 102
    invoke-direct {p0, v0, v1, v2}, Lwang/switchy/hin2n/Hin2nApplication;->createNotificationChannel(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method private initShare()V
    .locals 2

    const-string v0, "SHARE_WX_APPID"

    .line 73
    invoke-static {p0, v0}, Lwang/switchy/hin2n/tool/N2nTools;->getMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHARE_WX_APPSECRET"

    invoke-static {p0, v1}, Lwang/switchy/hin2n/tool/N2nTools;->getMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/socialize/PlatformConfig;->setWeixin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setDatabase()V
    .locals 3

    .line 84
    new-instance v0, Lwang/switchy/hin2n/storage/db/base/DaoMaster$DevOpenHelper;

    const-string v1, "N2N-db"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lwang/switchy/hin2n/storage/db/base/DaoMaster$DevOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    iput-object v0, p0, Lwang/switchy/hin2n/Hin2nApplication;->mHelper:Lwang/switchy/hin2n/storage/db/base/DaoMaster$DevOpenHelper;

    .line 85
    iget-object v0, p0, Lwang/switchy/hin2n/Hin2nApplication;->mHelper:Lwang/switchy/hin2n/storage/db/base/DaoMaster$DevOpenHelper;

    invoke-virtual {v0}, Lwang/switchy/hin2n/storage/db/base/DaoMaster$DevOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lwang/switchy/hin2n/Hin2nApplication;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 86
    new-instance v0, Lwang/switchy/hin2n/storage/db/base/DaoMaster;

    iget-object v1, p0, Lwang/switchy/hin2n/Hin2nApplication;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1}, Lwang/switchy/hin2n/storage/db/base/DaoMaster;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lwang/switchy/hin2n/Hin2nApplication;->mDaoMaster:Lwang/switchy/hin2n/storage/db/base/DaoMaster;

    .line 87
    iget-object v0, p0, Lwang/switchy/hin2n/Hin2nApplication;->mDaoMaster:Lwang/switchy/hin2n/storage/db/base/DaoMaster;

    invoke-virtual {v0}, Lwang/switchy/hin2n/storage/db/base/DaoMaster;->newSession()Lwang/switchy/hin2n/storage/db/base/DaoSession;

    move-result-object v0

    iput-object v0, p0, Lwang/switchy/hin2n/Hin2nApplication;->mDaoSession:Lwang/switchy/hin2n/storage/db/base/DaoSession;

    return-void
.end method


# virtual methods
.method public getDaoSession()Lwang/switchy/hin2n/storage/db/base/DaoSession;
    .locals 1

    .line 91
    iget-object v0, p0, Lwang/switchy/hin2n/Hin2nApplication;->mDaoSession:Lwang/switchy/hin2n/storage/db/base/DaoSession;

    return-object v0
.end method

.method public getDb()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 95
    iget-object v0, p0, Lwang/switchy/hin2n/Hin2nApplication;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .line 53
    invoke-super {p0}, Landroid/support/multidex/MultiDexApplication;->onCreate()V

    .line 54
    sput-object p0, Lwang/switchy/hin2n/Hin2nApplication;->instance:Lwang/switchy/hin2n/Hin2nApplication;

    .line 56
    iput-object p0, p0, Lwang/switchy/hin2n/Hin2nApplication;->AppContext:Landroid/content/Context;

    .line 58
    invoke-direct {p0}, Lwang/switchy/hin2n/Hin2nApplication;->setDatabase()V

    const-string v0, "UMENG_APPKEY"

    .line 60
    invoke-static {p0, v0}, Lwang/switchy/hin2n/tool/N2nTools;->getMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UMENG_CHANNEL"

    invoke-static {p0, v1}, Lwang/switchy/hin2n/tool/N2nTools;->getMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x1

    invoke-static {p0, v0, v1, v3, v2}, Lcom/umeng/commonsdk/UMConfigure;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 62
    sget-object v0, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->setScenarioType(Landroid/content/Context;Lcom/umeng/analytics/MobclickAgent$EScenarioType;)V

    const-string v0, "BUGLY_APPID"

    .line 64
    invoke-static {p0, v0}, Lwang/switchy/hin2n/tool/N2nTools;->getMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/tencent/bugly/Bugly;->init(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 65
    invoke-direct {p0}, Lwang/switchy/hin2n/Hin2nApplication;->initShare()V

    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 68
    invoke-direct {p0}, Lwang/switchy/hin2n/Hin2nApplication;->initNotificationChannel()V

    :cond_0
    return-void
.end method
