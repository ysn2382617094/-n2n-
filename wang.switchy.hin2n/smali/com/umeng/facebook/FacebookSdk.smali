.class public final Lcom/umeng/facebook/FacebookSdk;
.super Ljava/lang/Object;
.source "FacebookSdk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/facebook/FacebookSdk$InitializeCallback;
    }
.end annotation


# static fields
.field public static final APPLICATION_ID_PROPERTY:Ljava/lang/String; = "com.facebook.sdk.ApplicationId"

.field public static final APPLICATION_NAME_PROPERTY:Ljava/lang/String; = "com.facebook.sdk.ApplicationName"

.field private static final ATTRIBUTION_PREFERENCES:Ljava/lang/String; = "com.facebook.sdk.attributionTracking"

.field public static final CLIENT_TOKEN_PROPERTY:Ljava/lang/String; = "com.facebook.sdk.ClientToken"

.field private static final FACEBOOK_COM:Ljava/lang/String; = "facebook.com"

.field private static final LOCK:Ljava/lang/Object;

.field private static final MAX_REQUEST_CODE_RANGE:I = 0x64

.field private static final PUBLISH_ACTIVITY_PATH:Ljava/lang/String; = "%s/activities"

.field private static volatile appClientToken:Ljava/lang/String;

.field private static applicationContext:Landroid/content/Context;

.field private static volatile applicationId:Ljava/lang/String;

.field private static volatile applicationName:Ljava/lang/String;

.field private static cacheDir:Lcom/umeng/facebook/internal/LockOnGetVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/umeng/facebook/internal/LockOnGetVariable<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static callbackRequestCodeOffset:I

.field private static volatile executor:Ljava/util/concurrent/Executor;

.field private static volatile facebookDomain:Ljava/lang/String;

.field private static graphApiVersion:Ljava/lang/String;

.field private static volatile isDebugEnabled:Z

.field private static isLegacyTokenUpgradeSupported:Z

.field private static final loggingBehaviors:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/umeng/facebook/LoggingBehavior;",
            ">;"
        }
    .end annotation
.end field

.field private static onProgressThreshold:Ljava/util/concurrent/atomic/AtomicLong;

.field private static sdkInitialized:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 66
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/umeng/facebook/LoggingBehavior;

    sget-object v2, Lcom/umeng/facebook/LoggingBehavior;->DEVELOPER_ERRORS:Lcom/umeng/facebook/LoggingBehavior;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 67
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/umeng/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    const-string v0, "facebook.com"

    .line 74
    sput-object v0, Lcom/umeng/facebook/FacebookSdk;->facebookDomain:Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/32 v1, 0x10000

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/umeng/facebook/FacebookSdk;->onProgressThreshold:Ljava/util/concurrent/atomic/AtomicLong;

    .line 76
    sput-boolean v3, Lcom/umeng/facebook/FacebookSdk;->isDebugEnabled:Z

    .line 77
    sput-boolean v3, Lcom/umeng/facebook/FacebookSdk;->isLegacyTokenUpgradeSupported:Z

    const v0, 0xface

    .line 83
    sput v0, Lcom/umeng/facebook/FacebookSdk;->callbackRequestCodeOffset:I

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/facebook/FacebookSdk;->LOCK:Ljava/lang/Object;

    .line 85
    invoke-static {}, Lcom/umeng/facebook/internal/ServerProtocol;->getDefaultAPIVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/facebook/FacebookSdk;->graphApiVersion:Ljava/lang/String;

    .line 130
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/umeng/facebook/FacebookSdk;->sdkInitialized:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .line 64
    sget-object v0, Lcom/umeng/facebook/FacebookSdk;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public static addLoggingBehavior(Lcom/umeng/facebook/LoggingBehavior;)V
    .locals 2

    .line 288
    sget-object v0, Lcom/umeng/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    monitor-enter v0

    .line 289
    :try_start_0
    sget-object v1, Lcom/umeng/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 290
    invoke-static {}, Lcom/umeng/facebook/FacebookSdk;->updateGraphDebugBehavior()V

    .line 291
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 435
    invoke-static {}, Lcom/umeng/facebook/internal/Validate;->sdkInitialized()V

    .line 436
    sget-object v0, Lcom/umeng/facebook/FacebookSdk;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getApplicationId()Ljava/lang/String;
    .locals 1

    .line 706
    invoke-static {}, Lcom/umeng/facebook/internal/Validate;->sdkInitialized()V

    .line 707
    sget-object v0, Lcom/umeng/facebook/FacebookSdk;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public static getApplicationName()Ljava/lang/String;
    .locals 1

    .line 725
    invoke-static {}, Lcom/umeng/facebook/internal/Validate;->sdkInitialized()V

    .line 726
    sget-object v0, Lcom/umeng/facebook/FacebookSdk;->applicationName:Ljava/lang/String;

    return-object v0
.end method

.method public static getApplicationSignature(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 666
    invoke-static {}, Lcom/umeng/facebook/internal/Validate;->sdkInitialized()V

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 670
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 675
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x40

    .line 678
    :try_start_0
    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 683
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_3

    .line 684
    array-length v1, v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v1, "SHA-1"

    .line 690
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 695
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 696
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const/16 v0, 0x9

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    return-object v0

    :cond_3
    :goto_0
    return-object v0

    :catch_1
    return-object v0
.end method

.method public static getCacheDir()Ljava/io/File;
    .locals 1

    .line 770
    invoke-static {}, Lcom/umeng/facebook/internal/Validate;->sdkInitialized()V

    .line 771
    sget-object v0, Lcom/umeng/facebook/FacebookSdk;->cacheDir:Lcom/umeng/facebook/internal/LockOnGetVariable;

    invoke-virtual {v0}, Lcom/umeng/facebook/internal/LockOnGetVariable;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method public static getCallbackRequestCodeOffset()I
    .locals 1

    .line 789
    invoke-static {}, Lcom/umeng/facebook/internal/Validate;->sdkInitialized()V

    .line 790
    sget v0, Lcom/umeng/facebook/FacebookSdk;->callbackRequestCodeOffset:I

    return v0
.end method

.method public static getClientToken()Ljava/lang/String;
    .locals 1

    .line 743
    invoke-static {}, Lcom/umeng/facebook/internal/Validate;->sdkInitialized()V

    .line 744
    sget-object v0, Lcom/umeng/facebook/FacebookSdk;->appClientToken:Ljava/lang/String;

    return-object v0
.end method

.method public static getExecutor()Ljava/util/concurrent/Executor;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 386
    sget-object v0, Lcom/umeng/facebook/FacebookSdk;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 387
    :try_start_0
    sget-object v1, Lcom/umeng/facebook/FacebookSdk;->executor:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_0

    .line 388
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v1, Lcom/umeng/facebook/FacebookSdk;->executor:Ljava/util/concurrent/Executor;

    .line 390
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    sget-object v0, Lcom/umeng/facebook/FacebookSdk;->executor:Ljava/util/concurrent/Executor;

    return-object v0

    :catchall_0
    move-exception v1

    .line 390
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getFacebookDomain()Ljava/lang/String;
    .locals 1

    .line 414
    sget-object v0, Lcom/umeng/facebook/FacebookSdk;->facebookDomain:Ljava/lang/String;

    return-object v0
.end method

.method public static getGraphApiVersion()Ljava/lang/String;
    .locals 1

    .line 459
    sget-object v0, Lcom/umeng/facebook/FacebookSdk;->graphApiVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getOnProgressThreshold()J
    .locals 2

    .line 598
    invoke-static {}, Lcom/umeng/facebook/internal/Validate;->sdkInitialized()V

    .line 599
    sget-object v0, Lcom/umeng/facebook/FacebookSdk;->onProgressThreshold:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "4.18.0"

    return-object v0
.end method

.method public static isDebugEnabled()Z
    .locals 1

    .line 341
    sget-boolean v0, Lcom/umeng/facebook/FacebookSdk;->isDebugEnabled:Z

    return v0
.end method

.method public static isFacebookRequestCode(I)Z
    .locals 1

    .line 803
    sget v0, Lcom/umeng/facebook/FacebookSdk;->callbackRequestCodeOffset:I

    if-lt p0, v0, :cond_0

    sget v0, Lcom/umeng/facebook/FacebookSdk;->callbackRequestCodeOffset:I

    add-int/lit8 v0, v0, 0x64

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static declared-synchronized isInitialized()Z
    .locals 2

    const-class v0, Lcom/umeng/facebook/FacebookSdk;

    monitor-enter v0

    .line 261
    :try_start_0
    sget-object v1, Lcom/umeng/facebook/FacebookSdk;->sdkInitialized:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isLegacyTokenUpgradeSupported()Z
    .locals 1

    .line 358
    sget-boolean v0, Lcom/umeng/facebook/FacebookSdk;->isLegacyTokenUpgradeSupported:Z

    return v0
.end method

.method public static isLoggingBehaviorEnabled(Lcom/umeng/facebook/LoggingBehavior;)Z
    .locals 2

    .line 332
    sget-object v0, Lcom/umeng/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    monitor-enter v0

    .line 333
    :try_start_0
    invoke-static {}, Lcom/umeng/facebook/FacebookSdk;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/umeng/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 334
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static loadDefaultsFromMetadata(Landroid/content/Context;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 621
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 622
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    .line 621
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_8

    .line 627
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_1

    goto :goto_1

    .line 631
    :cond_1
    sget-object v0, Lcom/umeng/facebook/FacebookSdk;->applicationId:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 632
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.facebook.sdk.ApplicationId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 633
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 634
    check-cast v0, Ljava/lang/String;

    .line 635
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 636
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/facebook/FacebookSdk;->applicationId:Ljava/lang/String;

    goto :goto_0

    .line 638
    :cond_2
    sput-object v0, Lcom/umeng/facebook/FacebookSdk;->applicationId:Ljava/lang/String;

    goto :goto_0

    .line 640
    :cond_3
    instance-of v0, v0, Ljava/lang/Integer;

    if-nez v0, :cond_4

    goto :goto_0

    .line 641
    :cond_4
    new-instance p0, Lcom/umeng/facebook/FacebookException;

    const-string v0, "App Ids cannot be directly placed in the manifest.They must be prefixed by \'fb\' or be placed in the string resource file."

    invoke-direct {p0, v0}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 647
    :cond_5
    :goto_0
    sget-object v0, Lcom/umeng/facebook/FacebookSdk;->applicationName:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 648
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.facebook.sdk.ApplicationName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/facebook/FacebookSdk;->applicationName:Ljava/lang/String;

    .line 651
    :cond_6
    sget-object v0, Lcom/umeng/facebook/FacebookSdk;->appClientToken:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 652
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "com.facebook.sdk.ClientToken"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/umeng/facebook/FacebookSdk;->appClientToken:Ljava/lang/String;

    :cond_7
    return-void

    :cond_8
    :goto_1
    return-void

    :catch_0
    return-void
.end method

.method public static declared-synchronized sdkInitialize(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/umeng/facebook/FacebookSdk;

    monitor-enter v0

    const/4 v1, 0x0

    .line 178
    :try_start_0
    invoke-static {p0, v1}, Lcom/umeng/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;Lcom/umeng/facebook/FacebookSdk$InitializeCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 177
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized sdkInitialize(Landroid/content/Context;Lcom/umeng/facebook/FacebookSdk$InitializeCallback;)V
    .locals 2

    const-class v0, Lcom/umeng/facebook/FacebookSdk;

    monitor-enter v0

    .line 191
    :try_start_0
    sget-object v1, Lcom/umeng/facebook/FacebookSdk;->sdkInitialized:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    .line 193
    invoke-interface {p1}, Lcom/umeng/facebook/FacebookSdk$InitializeCallback;->onInitialized()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :cond_0
    monitor-exit v0

    return-void

    :cond_1
    :try_start_1
    const-string v1, "applicationContext"

    .line 198
    invoke-static {p0, v1}, Lcom/umeng/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 202
    invoke-static {p0, v1}, Lcom/umeng/facebook/internal/Validate;->hasFacebookActivity(Landroid/content/Context;Z)V

    .line 203
    invoke-static {p0, v1}, Lcom/umeng/facebook/internal/Validate;->hasInternetPermissions(Landroid/content/Context;Z)V

    .line 205
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/umeng/facebook/FacebookSdk;->applicationContext:Landroid/content/Context;

    .line 208
    sget-object p0, Lcom/umeng/facebook/FacebookSdk;->applicationContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/umeng/facebook/FacebookSdk;->loadDefaultsFromMetadata(Landroid/content/Context;)V

    const/4 p0, 0x1

    .line 212
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/umeng/facebook/FacebookSdk;->sdkInitialized:Ljava/lang/Boolean;

    .line 217
    invoke-static {}, Lcom/umeng/facebook/internal/NativeProtocol;->updateAllAvailableProtocolVersionsAsync()V

    .line 219
    sget-object p0, Lcom/umeng/facebook/FacebookSdk;->applicationContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/umeng/facebook/internal/BoltsMeasurementEventListener;->getInstance(Landroid/content/Context;)Lcom/umeng/facebook/internal/BoltsMeasurementEventListener;

    .line 221
    new-instance p0, Lcom/umeng/facebook/internal/LockOnGetVariable;

    new-instance v1, Lcom/umeng/facebook/FacebookSdk$1;

    invoke-direct {v1}, Lcom/umeng/facebook/FacebookSdk$1;-><init>()V

    invoke-direct {p0, v1}, Lcom/umeng/facebook/internal/LockOnGetVariable;-><init>(Ljava/util/concurrent/Callable;)V

    sput-object p0, Lcom/umeng/facebook/FacebookSdk;->cacheDir:Lcom/umeng/facebook/internal/LockOnGetVariable;

    .line 229
    new-instance p0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/umeng/facebook/FacebookSdk$2;

    invoke-direct {v1, p1}, Lcom/umeng/facebook/FacebookSdk$2;-><init>(Lcom/umeng/facebook/FacebookSdk$InitializeCallback;)V

    invoke-direct {p0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 253
    invoke-static {}, Lcom/umeng/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 190
    monitor-exit v0

    throw p0
.end method

.method public static setApplicationId(Ljava/lang/String;)V
    .locals 0

    .line 715
    sput-object p0, Lcom/umeng/facebook/FacebookSdk;->applicationId:Ljava/lang/String;

    return-void
.end method

.method public static setOnProgressThreshold(J)V
    .locals 1

    .line 609
    sget-object v0, Lcom/umeng/facebook/FacebookSdk;->onProgressThreshold:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method private static updateGraphDebugBehavior()V
    .locals 2

    .line 362
    sget-object v0, Lcom/umeng/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    sget-object v1, Lcom/umeng/facebook/LoggingBehavior;->GRAPH_API_DEBUG_INFO:Lcom/umeng/facebook/LoggingBehavior;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/umeng/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    sget-object v1, Lcom/umeng/facebook/LoggingBehavior;->GRAPH_API_DEBUG_WARNING:Lcom/umeng/facebook/LoggingBehavior;

    .line 363
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    sget-object v0, Lcom/umeng/facebook/FacebookSdk;->loggingBehaviors:Ljava/util/HashSet;

    sget-object v1, Lcom/umeng/facebook/LoggingBehavior;->GRAPH_API_DEBUG_WARNING:Lcom/umeng/facebook/LoggingBehavior;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
