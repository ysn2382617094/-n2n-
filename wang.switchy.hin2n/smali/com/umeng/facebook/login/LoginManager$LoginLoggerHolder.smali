.class Lcom/umeng/facebook/login/LoginManager$LoginLoggerHolder;
.super Ljava/lang/Object;
.source "LoginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/facebook/login/LoginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoginLoggerHolder"
.end annotation


# static fields
.field private static volatile logger:Lcom/umeng/facebook/login/LoginLogger;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Lcom/umeng/facebook/login/LoginLogger;
    .locals 0

    .line 619
    invoke-static {p0}, Lcom/umeng/facebook/login/LoginManager$LoginLoggerHolder;->getLogger(Landroid/content/Context;)Lcom/umeng/facebook/login/LoginLogger;

    move-result-object p0

    return-object p0
.end method

.method private static declared-synchronized getLogger(Landroid/content/Context;)Lcom/umeng/facebook/login/LoginLogger;
    .locals 3

    const-class v0, Lcom/umeng/facebook/login/LoginManager$LoginLoggerHolder;

    monitor-enter v0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 623
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/umeng/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 625
    monitor-exit v0

    return-object p0

    .line 627
    :cond_1
    :try_start_1
    sget-object v1, Lcom/umeng/facebook/login/LoginManager$LoginLoggerHolder;->logger:Lcom/umeng/facebook/login/LoginLogger;

    if-nez v1, :cond_2

    .line 628
    new-instance v1, Lcom/umeng/facebook/login/LoginLogger;

    invoke-static {}, Lcom/umeng/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/umeng/facebook/login/LoginLogger;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/umeng/facebook/login/LoginManager$LoginLoggerHolder;->logger:Lcom/umeng/facebook/login/LoginLogger;

    .line 630
    :cond_2
    sget-object p0, Lcom/umeng/facebook/login/LoginManager$LoginLoggerHolder;->logger:Lcom/umeng/facebook/login/LoginLogger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 622
    monitor-exit v0

    throw p0
.end method