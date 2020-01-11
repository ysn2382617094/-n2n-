.class public Lcom/tencent/bugly/Bugly;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field private static a:Z = false

.field public static applicationContext:Landroid/content/Context; = null

.field public static enable:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getAppChannel()Ljava/lang/String;
    .locals 6

    const-class v0, Lcom/tencent/bugly/Bugly;

    monitor-enter v0

    .line 72
    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 74
    monitor-exit v0

    return-object v2

    .line 77
    :cond_0
    :try_start_1
    iget-object v3, v1, Lcom/tencent/bugly/crashreport/common/info/a;->q:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 78
    invoke-static {}, Lcom/tencent/bugly/proguard/ae;->a()Lcom/tencent/bugly/proguard/ae;

    move-result-object v3

    if-nez v3, :cond_1

    .line 80
    iget-object v1, v1, Lcom/tencent/bugly/crashreport/common/info/a;->q:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_1
    const/16 v4, 0x22c

    const/4 v5, 0x1

    .line 85
    :try_start_2
    invoke-virtual {v3, v4, v2, v5}, Lcom/tencent/bugly/proguard/ae;->a(ILcom/tencent/bugly/proguard/ad;Z)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "app_channel"

    .line 87
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-eqz v2, :cond_2

    .line 89
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    .line 94
    :cond_2
    :try_start_3
    iget-object v1, v1, Lcom/tencent/bugly/crashreport/common/info/a;->q:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 71
    monitor-exit v0

    throw v1
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-static {p0, p1, p2, v0}, Lcom/tencent/bugly/Bugly;->init(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/BuglyStrategy;)V

    return-void
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/BuglyStrategy;)V
    .locals 2

    const-class v0, Lcom/tencent/bugly/Bugly;

    monitor-enter v0

    .line 50
    :try_start_0
    sget-boolean v1, Lcom/tencent/bugly/Bugly;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 51
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 53
    :try_start_1
    sput-boolean v1, Lcom/tencent/bugly/Bugly;->a:Z

    .line 54
    invoke-static {p0}, Lcom/tencent/bugly/proguard/ap;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/tencent/bugly/Bugly;->applicationContext:Landroid/content/Context;

    .line 55
    sget-object p0, Lcom/tencent/bugly/Bugly;->applicationContext:Landroid/content/Context;

    if-nez p0, :cond_1

    .line 56
    sget-object p0, Lcom/tencent/bugly/proguard/an;->b:Ljava/lang/String;

    const-string p1, "init arg \'context\' should not be null!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    monitor-exit v0

    return-void

    .line 60
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/tencent/bugly/CrashModule;->getInstance()Lcom/tencent/bugly/CrashModule;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/bugly/b;->a(Lcom/tencent/bugly/a;)V

    .line 61
    invoke-static {}, Lcom/tencent/bugly/beta/Beta;->getInstance()Lcom/tencent/bugly/beta/Beta;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/bugly/b;->a(Lcom/tencent/bugly/a;)V

    .line 62
    sget-boolean p0, Lcom/tencent/bugly/Bugly;->enable:Z

    sput-boolean p0, Lcom/tencent/bugly/b;->a:Z

    .line 63
    sget-object p0, Lcom/tencent/bugly/Bugly;->applicationContext:Landroid/content/Context;

    invoke-static {p0, p1, p2, p3}, Lcom/tencent/bugly/b;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/BuglyStrategy;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 49
    monitor-exit v0

    throw p0
.end method

.method public static putUserData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 142
    invoke-static {p0, p1, p2}, Lcom/tencent/bugly/crashreport/CrashReport;->putUserData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setAppChannel(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 114
    invoke-static {p0, p1}, Lcom/tencent/bugly/crashreport/CrashReport;->setAppChannel(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static setIsDevelopmentDevice(Landroid/content/Context;Z)V
    .locals 0

    .line 104
    invoke-static {p0, p1}, Lcom/tencent/bugly/crashreport/CrashReport;->setIsDevelopmentDevice(Landroid/content/Context;Z)V

    return-void
.end method

.method public static setUserId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 123
    invoke-static {p0, p1}, Lcom/tencent/bugly/crashreport/CrashReport;->setUserId(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static setUserTag(Landroid/content/Context;I)V
    .locals 0

    .line 132
    invoke-static {p0, p1}, Lcom/tencent/bugly/crashreport/CrashReport;->setUserSceneTag(Landroid/content/Context;I)V

    return-void
.end method
