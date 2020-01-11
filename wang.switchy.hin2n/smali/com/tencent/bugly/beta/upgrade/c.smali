.class public Lcom/tencent/bugly/beta/upgrade/c;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field public static a:Lcom/tencent/bugly/beta/upgrade/c;


# instance fields
.field public b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

.field public c:Lcom/tencent/bugly/beta/download/DownloadTask;

.field public d:Lcom/tencent/bugly/beta/download/DownloadListener;

.field public e:Lcom/tencent/bugly/beta/upgrade/UpgradeListener;

.field public f:Lcom/tencent/bugly/beta/upgrade/UpgradeStateListener;

.field public g:Z

.field public h:Lcom/tencent/bugly/beta/global/d;

.field public i:Lcom/tencent/bugly/beta/global/d;

.field public j:I

.field private final k:Ljava/lang/Object;

.field private final l:Ljava/lang/Object;

.field private m:Lcom/tencent/bugly/beta/download/DownloadListener;

.field private n:Lcom/tencent/bugly/beta/upgrade/a;

.field private o:Lcom/tencent/bugly/beta/global/d;

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/tencent/bugly/beta/upgrade/c;

    invoke-direct {v0}, Lcom/tencent/bugly/beta/upgrade/c;-><init>()V

    sput-object v0, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->k:Ljava/lang/Object;

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->l:Ljava/lang/Object;

    .line 319
    new-instance v0, Lcom/tencent/bugly/beta/download/a;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 320
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Lcom/tencent/bugly/beta/download/a;-><init>(I[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->m:Lcom/tencent/bugly/beta/download/DownloadListener;

    const/4 v0, 0x0

    .line 449
    iput-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->n:Lcom/tencent/bugly/beta/upgrade/a;

    return-void
.end method

.method private a()Lcom/tencent/bugly/proguard/y;
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    :goto_0
    return-object v0
.end method

.method private a(Z)V
    .locals 9

    .line 395
    invoke-direct {p0}, Lcom/tencent/bugly/beta/upgrade/c;->a()Lcom/tencent/bugly/proguard/y;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 401
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/y;->a()J

    move-result-wide v3

    const-wide/32 v5, 0x5265c00

    sub-long/2addr v3, v5

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-gtz v6, :cond_1

    .line 402
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/an;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 407
    :cond_1
    sget-object v1, Lcom/tencent/bugly/beta/global/f;->a:Lcom/tencent/bugly/beta/global/f;

    sget-object v2, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v2, v2, Lcom/tencent/bugly/beta/global/e;->p:Lcom/tencent/bugly/beta/download/b;

    iget-object v3, v0, Lcom/tencent/bugly/proguard/y;->l:Ljava/util/Map;

    invoke-virtual {v1, v2, v3}, Lcom/tencent/bugly/beta/global/f;->a(Lcom/tencent/bugly/beta/download/b;Ljava/util/Map;)V

    .line 409
    iget-object v1, p0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    if-nez v1, :cond_2

    .line 410
    invoke-direct {p0}, Lcom/tencent/bugly/beta/upgrade/c;->b()Lcom/tencent/bugly/beta/download/DownloadTask;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    .line 413
    :cond_2
    iget-object v1, p0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    if-nez v1, :cond_3

    return-void

    :cond_3
    const/4 v1, 0x1

    const/4 v2, 0x2

    if-nez p1, :cond_4

    .line 417
    iget-object v3, p0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    invoke-virtual {v3}, Lcom/tencent/bugly/beta/download/DownloadTask;->getStatus()I

    move-result v3

    if-ne v3, v2, :cond_4

    const-string p1, "Task is downloading %s %s"

    .line 418
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/y;->m:Ljava/lang/String;

    aput-object v0, v2, v5

    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    .line 419
    invoke-virtual {v0}, Lcom/tencent/bugly/beta/download/DownloadTask;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    .line 418
    invoke-static {p1, v2}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 423
    :cond_4
    iget-object v3, p0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    iget-object v4, p0, Lcom/tencent/bugly/beta/upgrade/c;->m:Lcom/tencent/bugly/beta/download/DownloadListener;

    invoke-virtual {v3, v4}, Lcom/tencent/bugly/beta/download/DownloadTask;->addListener(Lcom/tencent/bugly/beta/download/DownloadListener;)V

    .line 425
    iget-object v3, p0, Lcom/tencent/bugly/beta/upgrade/c;->d:Lcom/tencent/bugly/beta/download/DownloadListener;

    if-eqz v3, :cond_5

    .line 426
    iget-object v3, p0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    iget-object v4, p0, Lcom/tencent/bugly/beta/upgrade/c;->d:Lcom/tencent/bugly/beta/download/DownloadListener;

    invoke-virtual {v3, v4}, Lcom/tencent/bugly/beta/download/DownloadTask;->addListener(Lcom/tencent/bugly/beta/download/DownloadListener;)V

    .line 429
    :cond_5
    sget-object v3, Lcom/tencent/bugly/beta/ui/h;->v:Lcom/tencent/bugly/beta/ui/h;

    .line 430
    iget-object v4, p0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    invoke-virtual {v3, v0, v4}, Lcom/tencent/bugly/beta/ui/h;->a(Lcom/tencent/bugly/proguard/y;Lcom/tencent/bugly/beta/download/DownloadTask;)V

    .line 432
    new-instance v4, Lcom/tencent/bugly/beta/global/d;

    new-array v6, v2, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    aput-object v7, v6, v5

    iget-object v7, p0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    aput-object v7, v6, v1

    const/4 v7, 0x3

    invoke-direct {v4, v7, v6}, Lcom/tencent/bugly/beta/global/d;-><init>(I[Ljava/lang/Object;)V

    iput-object v4, v3, Lcom/tencent/bugly/beta/ui/h;->r:Ljava/lang/Runnable;

    .line 434
    new-instance v4, Lcom/tencent/bugly/beta/global/d;

    const/4 v6, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    aput-object v8, v7, v5

    iget-object v8, p0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    aput-object v8, v7, v1

    .line 435
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-direct {v4, v6, v7}, Lcom/tencent/bugly/beta/global/d;-><init>(I[Ljava/lang/Object;)V

    iput-object v4, v3, Lcom/tencent/bugly/beta/ui/h;->s:Ljava/lang/Runnable;

    .line 437
    iget-object v4, p0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->c:J

    const-string v4, "st.bch"

    .line 438
    iget-object v6, p0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    invoke-static {v4, v6}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;Landroid/os/Parcelable;)Z

    if-eqz p1, :cond_6

    .line 441
    sget-object v0, Lcom/tencent/bugly/beta/global/f;->a:Lcom/tencent/bugly/beta/global/f;

    new-instance v4, Lcom/tencent/bugly/beta/global/d;

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v3, v6, v5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v6, v1

    invoke-direct {v4, v2, v6}, Lcom/tencent/bugly/beta/global/d;-><init>(I[Ljava/lang/Object;)V

    const/16 p1, 0xbb8

    invoke-virtual {v0, v4, p1}, Lcom/tencent/bugly/beta/global/f;->a(Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 444
    :cond_6
    sget-object v4, Lcom/tencent/bugly/beta/global/f;->a:Lcom/tencent/bugly/beta/global/f;

    new-instance v6, Lcom/tencent/bugly/beta/global/d;

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v3, v7, v5

    if-nez p1, :cond_7

    iget-byte p1, v0, Lcom/tencent/bugly/proguard/y;->g:B

    if-ne p1, v2, :cond_8

    :cond_7
    const/4 v5, 0x1

    .line 445
    :cond_8
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v7, v1

    invoke-direct {v6, v2, v7}, Lcom/tencent/bugly/beta/global/d;-><init>(I[Ljava/lang/Object;)V

    .line 444
    invoke-virtual {v4, v6}, Lcom/tencent/bugly/beta/global/f;->a(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private b()Lcom/tencent/bugly/beta/download/DownloadTask;
    .locals 5

    .line 328
    invoke-direct {p0}, Lcom/tencent/bugly/beta/upgrade/c;->a()Lcom/tencent/bugly/proguard/y;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 333
    :cond_0
    iget-object v2, p0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    if-nez v2, :cond_1

    .line 334
    sget-object v2, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v2, v2, Lcom/tencent/bugly/beta/global/e;->p:Lcom/tencent/bugly/beta/download/b;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/y;->f:Lcom/tencent/bugly/proguard/u;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    sget-object v3, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v3, v3, Lcom/tencent/bugly/beta/global/e;->t:Ljava/io/File;

    .line 336
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    iget-object v4, v4, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v4, v4, Lcom/tencent/bugly/proguard/y;->f:Lcom/tencent/bugly/proguard/u;

    iget-object v4, v4, Lcom/tencent/bugly/proguard/u;->a:Ljava/lang/String;

    .line 335
    invoke-interface {v2, v0, v3, v1, v4}, Lcom/tencent/bugly/beta/download/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/beta/download/DownloadTask;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    return-object v0
.end method

.method private c()V
    .locals 14

    .line 346
    invoke-direct {p0}, Lcom/tencent/bugly/beta/upgrade/c;->a()Lcom/tencent/bugly/proguard/y;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 352
    :cond_0
    iget-object v1, p0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    if-nez v1, :cond_1

    .line 353
    invoke-direct {p0}, Lcom/tencent/bugly/beta/upgrade/c;->b()Lcom/tencent/bugly/beta/download/DownloadTask;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    .line 356
    :cond_1
    iget-object v1, p0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    if-nez v1, :cond_2

    return-void

    :cond_2
    const-string v1, "st.bch"

    .line 361
    iget-object v2, p0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    invoke-static {v1, v2}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;Landroid/os/Parcelable;)Z

    .line 364
    iget-object v1, p0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    invoke-static {v1}, Lcom/tencent/bugly/beta/download/BetaReceiver;->addTask(Lcom/tencent/bugly/beta/download/DownloadTask;)V

    .line 367
    iget-object v1, p0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    invoke-virtual {v1}, Lcom/tencent/bugly/beta/download/DownloadTask;->getStatus()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 368
    iget-boolean v1, p0, Lcom/tencent/bugly/beta/upgrade/c;->g:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v1, v1, Lcom/tencent/bugly/beta/global/e;->s:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    .line 369
    invoke-virtual {v2}, Lcom/tencent/bugly/beta/download/DownloadTask;->getSaveFile()Ljava/io/File;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/bugly/proguard/y;->f:Lcom/tencent/bugly/proguard/u;

    iget-object v3, v3, Lcom/tencent/bugly/proguard/u;->a:Ljava/lang/String;

    .line 368
    invoke-static {v1, v2, v3}, Lcom/tencent/bugly/beta/global/a;->a(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 372
    sget-object v1, Lcom/tencent/bugly/proguard/p;->a:Lcom/tencent/bugly/proguard/p;

    new-instance v13, Lcom/tencent/bugly/proguard/w;

    const-string v3, "install"

    .line 373
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    iget-object v9, v0, Lcom/tencent/bugly/proguard/y;->e:Lcom/tencent/bugly/proguard/v;

    iget-object v10, v0, Lcom/tencent/bugly/proguard/y;->m:Ljava/lang/String;

    iget v11, v0, Lcom/tencent/bugly/proguard/y;->p:I

    const/4 v12, 0x0

    move-object v2, v13

    invoke-direct/range {v2 .. v12}, Lcom/tencent/bugly/proguard/w;-><init>(Ljava/lang/String;JBJLcom/tencent/bugly/proguard/v;Ljava/lang/String;ILjava/util/Map;)V

    .line 372
    invoke-virtual {v1, v13}, Lcom/tencent/bugly/proguard/p;->a(Lcom/tencent/bugly/proguard/w;)Z

    goto :goto_0

    .line 379
    :cond_3
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-boolean v0, v0, Lcom/tencent/bugly/beta/global/e;->d:Z

    if-eqz v0, :cond_5

    .line 380
    iget-boolean v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->g:Z

    invoke-direct {p0, v0}, Lcom/tencent/bugly/beta/upgrade/c;->a(Z)V

    goto :goto_0

    .line 384
    :cond_4
    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    invoke-virtual {v0}, Lcom/tencent/bugly/beta/download/DownloadTask;->download()V

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/bugly/proguard/y;)Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 63
    iget-object v2, v1, Lcom/tencent/bugly/beta/upgrade/c;->k:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    const-string v3, "st.bch"

    .line 66
    sget-object v4, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 67
    invoke-static {v3, v4}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 68
    iget-object v5, v3, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    if-nez v5, :cond_0

    const-string v3, "st.bch"

    .line 69
    invoke-static {v3}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;)Z

    move-object v3, v4

    :cond_0
    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eqz v3, :cond_3

    .line 74
    iget-object v7, v3, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    if-eqz v7, :cond_3

    .line 76
    iget-object v7, v3, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v7, v7, Lcom/tencent/bugly/proguard/y;->e:Lcom/tencent/bugly/proguard/v;

    iget v7, v7, Lcom/tencent/bugly/proguard/v;->c:I

    sget-object v8, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget v8, v8, Lcom/tencent/bugly/beta/global/e;->w:I

    if-le v7, v8, :cond_2

    iget-object v7, v3, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget v7, v7, Lcom/tencent/bugly/proguard/y;->n:I

    if-ne v7, v6, :cond_2

    iget-object v7, v3, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v7, v7, Lcom/tencent/bugly/proguard/y;->f:Lcom/tencent/bugly/proguard/u;

    if-eqz v7, :cond_1

    sget-object v7, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v7, v7, Lcom/tencent/bugly/beta/global/e;->v:Ljava/lang/String;

    iget-object v8, v3, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v8, v8, Lcom/tencent/bugly/proguard/y;->f:Lcom/tencent/bugly/proguard/u;

    iget-object v8, v8, Lcom/tencent/bugly/proguard/u;->a:Ljava/lang/String;

    .line 79
    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    :cond_1
    iget-object v7, v3, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget v7, v7, Lcom/tencent/bugly/proguard/y;->p:I

    if-ne v7, v5, :cond_3

    :cond_2
    const-string v3, "st.bch"

    .line 81
    invoke-static {v3}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;)Z

    .line 83
    iput-object v4, v1, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    move-object v3, v4

    :cond_3
    const/4 v7, 0x2

    const/4 v8, 0x0

    if-eqz v0, :cond_4

    .line 90
    iget-object v9, v0, Lcom/tencent/bugly/proguard/y;->e:Lcom/tencent/bugly/proguard/v;

    iget v9, v9, Lcom/tencent/bugly/proguard/v;->c:I

    sget-object v10, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget v10, v10, Lcom/tencent/bugly/beta/global/e;->w:I

    if-ge v9, v10, :cond_4

    const-string v9, "versionCode is too small, discard remote strategy: [new: %d] [current: %d]"

    .line 91
    new-array v10, v7, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/y;->e:Lcom/tencent/bugly/proguard/v;

    iget v0, v0, Lcom/tencent/bugly/proguard/v;->c:I

    .line 93
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v10, v8

    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget v0, v0, Lcom/tencent/bugly/beta/global/e;->w:I

    .line 94
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v10, v6

    .line 91
    invoke-static {v9, v10}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v4

    :cond_4
    if-eqz v0, :cond_6

    .line 100
    iget v9, v0, Lcom/tencent/bugly/proguard/y;->n:I

    if-ne v9, v7, :cond_5

    if-eqz v3, :cond_5

    .line 101
    iget-object v9, v3, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    if-eqz v9, :cond_5

    iget-object v9, v0, Lcom/tencent/bugly/proguard/y;->m:Ljava/lang/String;

    .line 103
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, v3, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v9, v9, Lcom/tencent/bugly/proguard/y;->m:Ljava/lang/String;

    .line 104
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, v0, Lcom/tencent/bugly/proguard/y;->m:Ljava/lang/String;

    iget-object v10, v3, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v10, v10, Lcom/tencent/bugly/proguard/y;->m:Ljava/lang/String;

    .line 105
    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v9, "callback strategy: %s"

    .line 107
    new-array v10, v6, [Ljava/lang/Object;

    iget-object v11, v0, Lcom/tencent/bugly/proguard/y;->m:Ljava/lang/String;

    aput-object v11, v10, v8

    invoke-static {v9, v10}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v9, "st.bch"

    .line 108
    invoke-static {v9}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;)Z

    .line 109
    sget-object v9, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v9, v9, Lcom/tencent/bugly/beta/global/e;->p:Lcom/tencent/bugly/beta/download/b;

    iget-object v3, v3, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v3, v3, Lcom/tencent/bugly/proguard/y;->f:Lcom/tencent/bugly/proguard/u;

    iget-object v3, v3, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    sget-object v10, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v10, v10, Lcom/tencent/bugly/beta/global/e;->t:Ljava/io/File;

    .line 111
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 109
    invoke-interface {v9, v3, v10, v4, v4}, Lcom/tencent/bugly/beta/download/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/beta/download/DownloadTask;

    move-result-object v3

    .line 112
    invoke-virtual {v3, v6}, Lcom/tencent/bugly/beta/download/DownloadTask;->delete(Z)V

    move-object v3, v4

    .line 117
    :cond_5
    iget v9, v0, Lcom/tencent/bugly/proguard/y;->n:I

    if-eq v9, v6, :cond_6

    const-string v9, "invalid strategy: %s"

    .line 118
    new-array v10, v6, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/y;->m:Ljava/lang/String;

    aput-object v0, v10, v8

    invoke-static {v9, v10}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v4

    :cond_6
    if-eqz v0, :cond_d

    if-eqz v3, :cond_7

    .line 124
    iget-object v9, v3, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/tencent/bugly/proguard/y;->m:Ljava/lang/String;

    .line 126
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, v3, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v9, v9, Lcom/tencent/bugly/proguard/y;->m:Ljava/lang/String;

    .line 127
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, v0, Lcom/tencent/bugly/proguard/y;->m:Ljava/lang/String;

    iget-object v10, v3, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v10, v10, Lcom/tencent/bugly/proguard/y;->m:Ljava/lang/String;

    .line 128
    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 130
    new-instance v9, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    invoke-static {v3}, Lcom/tencent/bugly/proguard/ap;->a(Landroid/os/Parcelable;)[B

    move-result-object v10

    invoke-static {v10}, Lcom/tencent/bugly/proguard/ap;->d([B)Landroid/os/Parcel;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;-><init>(Landroid/os/Parcel;)V

    const-string v10, "same strategyId:[new: %s] [current: %s] keep has popup times: %d, interval: %d"

    const/4 v11, 0x4

    .line 132
    new-array v11, v11, [Ljava/lang/Object;

    iget-object v12, v0, Lcom/tencent/bugly/proguard/y;->m:Ljava/lang/String;

    aput-object v12, v11, v8

    iget-object v12, v3, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v12, v12, Lcom/tencent/bugly/proguard/y;->m:Ljava/lang/String;

    aput-object v12, v11, v6

    iget v12, v9, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->b:I

    .line 135
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v7

    iget-wide v12, v0, Lcom/tencent/bugly/proguard/y;->i:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v11, v5

    .line 132
    invoke-static {v10, v11}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 137
    :cond_7
    new-instance v9, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    invoke-direct {v9}, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;-><init>()V

    .line 139
    :goto_0
    iput-object v0, v9, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v9, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->e:J

    if-eqz v3, :cond_c

    .line 144
    iget-object v10, v3, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v10, v10, Lcom/tencent/bugly/proguard/y;->f:Lcom/tencent/bugly/proguard/u;

    iget-object v10, v10, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    iget-object v11, v0, Lcom/tencent/bugly/proguard/y;->f:Lcom/tencent/bugly/proguard/u;

    iget-object v11, v11, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    .line 145
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 146
    iget-object v10, v1, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    if-nez v10, :cond_9

    .line 147
    sget-object v10, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v10, v10, Lcom/tencent/bugly/beta/global/e;->p:Lcom/tencent/bugly/beta/download/b;

    iget-object v11, v3, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v11, v11, Lcom/tencent/bugly/proguard/y;->f:Lcom/tencent/bugly/proguard/u;

    iget-object v11, v11, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    sget-object v12, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v12, v12, Lcom/tencent/bugly/beta/global/e;->t:Ljava/io/File;

    .line 149
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    .line 147
    invoke-interface {v10, v11, v12, v4, v4}, Lcom/tencent/bugly/beta/download/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/beta/download/DownloadTask;

    move-result-object v4

    .line 150
    invoke-virtual {v4, v6}, Lcom/tencent/bugly/beta/download/DownloadTask;->delete(Z)V

    .line 151
    sget-object v4, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v4, v4, Lcom/tencent/bugly/beta/global/e;->t:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v10, v4

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_a

    aget-object v12, v4, v11

    .line 152
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    move-result v13

    if-nez v13, :cond_8

    const-string v13, "cannot deleteCache file:%s"

    .line 153
    new-array v14, v6, [Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v14, v8

    invoke-static {v13, v14}, Lcom/tencent/bugly/proguard/an;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 157
    :cond_9
    sget-object v10, Lcom/tencent/bugly/beta/download/BetaReceiver;->netListeners:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v11, v1, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    invoke-virtual {v11}, Lcom/tencent/bugly/beta/download/DownloadTask;->getDownloadUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v10, v1, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    invoke-virtual {v10, v6}, Lcom/tencent/bugly/beta/download/DownloadTask;->delete(Z)V

    .line 159
    iput-object v4, v1, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    .line 164
    :cond_a
    iget-object v3, v3, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget v3, v3, Lcom/tencent/bugly/proguard/y;->p:I

    if-ne v3, v5, :cond_c

    .line 166
    sget-object v3, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v3, v3, Lcom/tencent/bugly/beta/global/e;->H:Ljava/io/File;

    if-eqz v3, :cond_b

    .line 168
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "delete tmpPatchFile"

    .line 169
    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 171
    :cond_b
    sget-object v3, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v3, v3, Lcom/tencent/bugly/beta/global/e;->G:Ljava/io/File;

    if-eqz v3, :cond_c

    .line 173
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 174
    sget-object v3, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    const-string v4, ""

    iput-object v4, v3, Lcom/tencent/bugly/beta/global/e;->L:Ljava/lang/String;

    const-string v3, "delete patchFile"

    .line 175
    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_c
    const-string v3, "st.bch"

    .line 179
    invoke-static {v3, v9}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;Landroid/os/Parcelable;)Z

    const-string v3, "onUpgradeReceived: %s [type: %d]"

    .line 180
    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v8

    iget-byte v5, v0, Lcom/tencent/bugly/proguard/y;->g:B

    .line 181
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 180
    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 183
    sget-object v3, Lcom/tencent/bugly/proguard/p;->a:Lcom/tencent/bugly/proguard/p;

    new-instance v4, Lcom/tencent/bugly/proguard/w;

    const-string v11, "rcv"

    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    iget-object v5, v0, Lcom/tencent/bugly/proguard/y;->e:Lcom/tencent/bugly/proguard/v;

    iget-object v6, v0, Lcom/tencent/bugly/proguard/y;->m:Ljava/lang/String;

    iget v0, v0, Lcom/tencent/bugly/proguard/y;->p:I

    const/16 v20, 0x0

    move-object v10, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move/from16 v19, v0

    invoke-direct/range {v10 .. v20}, Lcom/tencent/bugly/proguard/w;-><init>(Ljava/lang/String;JBJLcom/tencent/bugly/proguard/v;Ljava/lang/String;ILjava/util/Map;)V

    .line 183
    invoke-virtual {v3, v4}, Lcom/tencent/bugly/proguard/p;->a(Lcom/tencent/bugly/proguard/w;)Z

    move-object v4, v9

    goto :goto_2

    :cond_d
    if-eqz v3, :cond_e

    .line 189
    iget-object v0, v3, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    if-eqz v0, :cond_e

    iget-object v0, v3, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget v0, v0, Lcom/tencent/bugly/proguard/y;->p:I

    if-eq v0, v5, :cond_e

    const-string v0, "st.bch"

    .line 193
    invoke-static {v0}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;)Z

    .line 197
    :cond_e
    :goto_2
    monitor-exit v2

    return-object v4

    :catchall_0
    move-exception v0

    .line 198
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/tencent/bugly/proguard/bg;)V
    .locals 5

    .line 529
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->F:Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;

    if-nez v0, :cond_0

    .line 530
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    new-instance v1, Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;

    invoke-direct {v1}, Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;-><init>()V

    iput-object v1, v0, Lcom/tencent/bugly/beta/global/e;->F:Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;

    :cond_0
    if-eqz p1, :cond_8

    .line 533
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->F:Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;

    iget-wide v0, v0, Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;->b:J

    iget-wide v2, p1, Lcom/tencent/bugly/proguard/bg;->h:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    goto/16 :goto_0

    .line 538
    :cond_1
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->F:Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;

    iget-wide v1, p1, Lcom/tencent/bugly/proguard/bg;->h:J

    iput-wide v1, v0, Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;->b:J

    .line 540
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->F:Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;->a:Lcom/tencent/bugly/proguard/bg;

    iget-boolean v1, p1, Lcom/tencent/bugly/proguard/bg;->b:Z

    iput-boolean v1, v0, Lcom/tencent/bugly/proguard/bg;->b:Z

    .line 542
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->F:Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;->a:Lcom/tencent/bugly/proguard/bg;

    iget-boolean v1, p1, Lcom/tencent/bugly/proguard/bg;->c:Z

    iput-boolean v1, v0, Lcom/tencent/bugly/proguard/bg;->c:Z

    .line 543
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->F:Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;->a:Lcom/tencent/bugly/proguard/bg;

    iget-wide v1, p1, Lcom/tencent/bugly/proguard/bg;->h:J

    iput-wide v1, v0, Lcom/tencent/bugly/proguard/bg;->h:J

    .line 544
    iget-object v0, p1, Lcom/tencent/bugly/proguard/bg;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ap;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 545
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->F:Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;->a:Lcom/tencent/bugly/proguard/bg;

    iget-object v1, p1, Lcom/tencent/bugly/proguard/bg;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/proguard/bg;->d:Ljava/lang/String;

    .line 548
    :cond_2
    iget-object v0, p1, Lcom/tencent/bugly/proguard/bg;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ap;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 549
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->F:Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;->a:Lcom/tencent/bugly/proguard/bg;

    iget-object v1, p1, Lcom/tencent/bugly/proguard/bg;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/proguard/bg;->e:Ljava/lang/String;

    .line 552
    :cond_3
    iget-object v0, p1, Lcom/tencent/bugly/proguard/bg;->f:Lcom/tencent/bugly/proguard/bf;

    if-eqz v0, :cond_4

    .line 553
    iget-object v0, p1, Lcom/tencent/bugly/proguard/bg;->f:Lcom/tencent/bugly/proguard/bf;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/bf;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 554
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->F:Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;->a:Lcom/tencent/bugly/proguard/bg;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/bg;->f:Lcom/tencent/bugly/proguard/bf;

    iget-object v1, p1, Lcom/tencent/bugly/proguard/bg;->f:Lcom/tencent/bugly/proguard/bf;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/bf;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/proguard/bf;->a:Ljava/lang/String;

    .line 558
    :cond_4
    iget-object v0, p1, Lcom/tencent/bugly/proguard/bg;->g:Ljava/util/Map;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/tencent/bugly/proguard/bg;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 559
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->F:Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;->a:Lcom/tencent/bugly/proguard/bg;

    iget-object v1, p1, Lcom/tencent/bugly/proguard/bg;->g:Ljava/util/Map;

    iput-object v1, v0, Lcom/tencent/bugly/proguard/bg;->g:Ljava/util/Map;

    .line 562
    :cond_5
    iget-object v0, p1, Lcom/tencent/bugly/proguard/bg;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ap;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 563
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->F:Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;->a:Lcom/tencent/bugly/proguard/bg;

    iget-object v1, p1, Lcom/tencent/bugly/proguard/bg;->i:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/proguard/bg;->i:Ljava/lang/String;

    .line 566
    :cond_6
    iget-object v0, p1, Lcom/tencent/bugly/proguard/bg;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ap;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 567
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->F:Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;->a:Lcom/tencent/bugly/proguard/bg;

    iget-object p1, p1, Lcom/tencent/bugly/proguard/bg;->j:Ljava/lang/String;

    iput-object p1, v0, Lcom/tencent/bugly/proguard/bg;->j:Ljava/lang/String;

    :cond_7
    const-string p1, "us.bch"

    .line 570
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->F:Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;

    invoke-static {p1, v0}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;Landroid/os/Parcelable;)Z

    return-void

    :cond_8
    :goto_0
    return-void
.end method

.method public a(ZZI)V
    .locals 10

    .line 460
    iget-object v7, p0, Lcom/tencent/bugly/beta/upgrade/c;->l:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    const-string v0, "st.bch"

    .line 461
    sget-object v1, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    const/4 v1, 0x3

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 463
    iget-object v2, v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget v2, v2, Lcom/tencent/bugly/proguard/y;->p:I

    if-ne v2, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    move-object v8, v0

    .line 470
    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->n:Lcom/tencent/bugly/beta/upgrade/a;

    const/4 v9, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->n:Lcom/tencent/bugly/beta/upgrade/a;

    iget-boolean v0, v0, Lcom/tencent/bugly/beta/upgrade/a;->d:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->p:Z

    if-eq v0, p1, :cond_1

    goto :goto_0

    .line 504
    :cond_1
    iget-object v1, p0, Lcom/tencent/bugly/beta/upgrade/c;->n:Lcom/tencent/bugly/beta/upgrade/a;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 506
    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->n:Lcom/tencent/bugly/beta/upgrade/a;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/a;->c:[Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v3

    .line 507
    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->n:Lcom/tencent/bugly/beta/upgrade/a;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/a;->c:[Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v2

    .line 509
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 510
    :try_start_2
    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->o:Lcom/tencent/bugly/beta/global/d;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    .line 509
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 473
    :cond_2
    :goto_0
    iput-boolean p1, p0, Lcom/tencent/bugly/beta/upgrade/c;->p:Z

    .line 474
    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->n:Lcom/tencent/bugly/beta/upgrade/a;

    if-eqz v0, :cond_3

    .line 475
    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->n:Lcom/tencent/bugly/beta/upgrade/a;

    iput-boolean v2, v0, Lcom/tencent/bugly/beta/upgrade/a;->d:Z

    .line 478
    :cond_3
    new-instance v0, Lcom/tencent/bugly/beta/upgrade/a;

    const/16 v4, 0x324

    new-array v1, v1, [Ljava/lang/Object;

    .line 480
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v1, v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v1, v2

    aput-object v8, v1, v9

    invoke-direct {v0, v2, v4, v1}, Lcom/tencent/bugly/beta/upgrade/a;-><init>(II[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->n:Lcom/tencent/bugly/beta/upgrade/a;

    .line 481
    new-instance v0, Lcom/tencent/bugly/beta/global/d;

    const/16 v1, 0xc

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v3

    iget-object v3, p0, Lcom/tencent/bugly/beta/upgrade/c;->n:Lcom/tencent/bugly/beta/upgrade/a;

    aput-object v3, v4, v2

    invoke-direct {v0, v1, v4}, Lcom/tencent/bugly/beta/global/d;-><init>(I[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->o:Lcom/tencent/bugly/beta/global/d;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    const-string v0, ""

    const-wide/16 v1, 0x0

    if-eqz v8, :cond_4

    .line 486
    iget-object v3, v8, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    if-eqz v3, :cond_4

    .line 487
    iget-object v0, v8, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/y;->m:Ljava/lang/String;

    .line 488
    iget-object v1, v8, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-wide v1, v1, Lcom/tencent/bugly/proguard/y;->o:J

    :cond_4
    move-object v3, v0

    move-wide v4, v1

    .line 490
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "G16"

    .line 491
    sget-object v1, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v1, v1, Lcom/tencent/bugly/beta/global/e;->L:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    new-instance v0, Lcom/tencent/bugly/proguard/z;

    move-object v1, v0

    move v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/z;-><init>(ILjava/lang/String;JLjava/util/Map;)V

    .line 493
    invoke-static {v0}, Lcom/tencent/bugly/proguard/ah;->a(Lcom/tencent/bugly/proguard/m;)[B

    move-result-object v3

    .line 496
    sget-object v1, Lcom/tencent/bugly/beta/upgrade/b;->a:Lcom/tencent/bugly/beta/upgrade/b;

    const/16 v2, 0x324

    iget-object v4, p0, Lcom/tencent/bugly/beta/upgrade/c;->n:Lcom/tencent/bugly/beta/upgrade/a;

    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->F:Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;->a:Lcom/tencent/bugly/proguard/bg;

    iget-object v6, v0, Lcom/tencent/bugly/proguard/bg;->e:Ljava/lang/String;

    move v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/tencent/bugly/beta/upgrade/b;->a(I[BLcom/tencent/bugly/beta/upgrade/a;ZLjava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 499
    :try_start_6
    invoke-static {v0}, Lcom/tencent/bugly/proguard/an;->b(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 500
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_1
    if-eqz p1, :cond_6

    if-eqz p2, :cond_7

    :cond_6
    if-eqz v8, :cond_8

    .line 514
    iget-object v0, v8, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    if-eqz v0, :cond_8

    iget-object v0, v8, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget v0, v0, Lcom/tencent/bugly/proguard/y;->p:I

    if-ne v0, v9, :cond_8

    .line 517
    :cond_7
    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->o:Lcom/tencent/bugly/beta/global/d;

    invoke-static {v0}, Lcom/tencent/bugly/beta/utils/e;->b(Ljava/lang/Runnable;)V

    .line 518
    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->o:Lcom/tencent/bugly/beta/global/d;

    const-wide/16 v1, 0x1770

    invoke-static {v0, v1, v2}, Lcom/tencent/bugly/beta/utils/e;->a(Ljava/lang/Runnable;J)V

    .line 520
    :cond_8
    monitor-exit v7

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0
.end method

.method public a(ZZILcom/tencent/bugly/proguard/y;Ljava/lang/String;)V
    .locals 10

    .line 209
    iget-object p5, p0, Lcom/tencent/bugly/beta/upgrade/c;->k:Ljava/lang/Object;

    monitor-enter p5

    .line 210
    :try_start_0
    invoke-virtual {p0, p4}, Lcom/tencent/bugly/beta/upgrade/c;->a(Lcom/tencent/bugly/proguard/y;)Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    move-result-object p4

    iput-object p4, p0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    .line 211
    iput-boolean p1, p0, Lcom/tencent/bugly/beta/upgrade/c;->g:Z

    .line 216
    iget-object p4, p0, Lcom/tencent/bugly/beta/upgrade/c;->e:Lcom/tencent/bugly/beta/upgrade/UpgradeListener;

    const/4 v0, 0x4

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p4, :cond_3

    const-string p4, "\u4f60\u5df2\u653e\u5f03\u8ba9SDK\u6765\u5904\u7406\u7b56\u7565"

    .line 217
    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {p4, v6}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 218
    iput v3, p0, Lcom/tencent/bugly/beta/upgrade/c;->j:I

    .line 219
    iget-object p4, p0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    if-nez p4, :cond_0

    const-string p4, "betaStrategy is null"

    .line 220
    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {p4, v6}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 223
    :cond_0
    iget-object p4, p0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    const/4 v6, 0x0

    if-eqz p4, :cond_1

    iget-object p4, p0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    if-nez p4, :cond_1

    .line 224
    sget-object p4, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object p4, p4, Lcom/tencent/bugly/beta/global/e;->p:Lcom/tencent/bugly/beta/download/b;

    iget-object v7, p0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    iget-object v7, v7, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v7, v7, Lcom/tencent/bugly/proguard/y;->f:Lcom/tencent/bugly/proguard/u;

    iget-object v7, v7, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    sget-object v8, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v8, v8, Lcom/tencent/bugly/beta/global/e;->t:Ljava/io/File;

    .line 227
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    iget-object v9, v9, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v9, v9, Lcom/tencent/bugly/proguard/y;->f:Lcom/tencent/bugly/proguard/u;

    iget-object v9, v9, Lcom/tencent/bugly/proguard/u;->a:Ljava/lang/String;

    .line 225
    invoke-interface {p4, v7, v8, v6, v9}, Lcom/tencent/bugly/beta/download/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/beta/download/DownloadTask;

    move-result-object p4

    iput-object p4, p0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    .line 231
    :cond_1
    iget-object p4, p0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    if-nez p4, :cond_2

    const-string p4, "\u7528\u6237\u81ea\u5b9a\u4e49activity\uff0c\u521b\u5efatask\u5931\u8d25 [strategy:%s]"

    .line 232
    new-array v7, v4, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    aput-object v8, v7, v5

    invoke-static {p4, v7}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 234
    iput-object v6, p0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    const-string p4, "st.bch"

    .line 235
    invoke-static {p4}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;)Z

    goto :goto_0

    .line 237
    :cond_2
    iget-object p4, p0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    iget-object v6, p0, Lcom/tencent/bugly/beta/upgrade/c;->m:Lcom/tencent/bugly/beta/download/DownloadListener;

    invoke-virtual {p4, v6}, Lcom/tencent/bugly/beta/download/DownloadTask;->addListener(Lcom/tencent/bugly/beta/download/DownloadListener;)V

    .line 239
    :goto_0
    new-instance p4, Lcom/tencent/bugly/beta/global/d;

    const/16 v6, 0x10

    new-array v7, v1, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/tencent/bugly/beta/upgrade/c;->e:Lcom/tencent/bugly/beta/upgrade/UpgradeListener;

    aput-object v8, v7, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    iget-object v8, p0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    aput-object v8, v7, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v0

    invoke-direct {p4, v6, v7}, Lcom/tencent/bugly/beta/global/d;-><init>(I[Ljava/lang/Object;)V

    invoke-static {p4}, Lcom/tencent/bugly/beta/utils/e;->a(Ljava/lang/Runnable;)V

    :cond_3
    const/16 p4, 0x12

    if-eqz p3, :cond_5

    if-eqz p1, :cond_5

    if-nez p2, :cond_5

    .line 243
    iget-object p3, p0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    if-nez p3, :cond_5

    .line 244
    iget-object p2, p0, Lcom/tencent/bugly/beta/upgrade/c;->f:Lcom/tencent/bugly/beta/upgrade/UpgradeStateListener;

    if-eqz p2, :cond_4

    .line 245
    new-instance p2, Lcom/tencent/bugly/beta/global/d;

    new-array p3, v3, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->f:Lcom/tencent/bugly/beta/upgrade/UpgradeStateListener;

    aput-object v0, p3, v5

    const/4 v0, -0x1

    .line 246
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, v4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p3, v2

    invoke-direct {p2, p4, p3}, Lcom/tencent/bugly/beta/global/d;-><init>(I[Ljava/lang/Object;)V

    .line 245
    invoke-static {p2}, Lcom/tencent/bugly/beta/utils/e;->a(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 248
    :cond_4
    new-instance p1, Lcom/tencent/bugly/beta/global/d;

    new-array p2, v4, [Ljava/lang/Object;

    sget-object p3, Lcom/tencent/bugly/beta/Beta;->strToastCheckUpgradeError:Ljava/lang/String;

    aput-object p3, p2, v5

    invoke-direct {p1, v1, p2}, Lcom/tencent/bugly/beta/global/d;-><init>(I[Ljava/lang/Object;)V

    .line 249
    invoke-static {p1}, Lcom/tencent/bugly/beta/utils/e;->a(Ljava/lang/Runnable;)V

    .line 251
    :goto_1
    monitor-exit p5

    return-void

    .line 254
    :cond_5
    iget-object p3, p0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    if-eqz p3, :cond_12

    iget-object p3, p0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    iget-object p3, p3, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    if-eqz p3, :cond_12

    .line 255
    iget-object p3, p0, Lcom/tencent/bugly/beta/upgrade/c;->f:Lcom/tencent/bugly/beta/upgrade/UpgradeStateListener;

    if-eqz p3, :cond_6

    .line 256
    new-instance p3, Lcom/tencent/bugly/beta/global/d;

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/tencent/bugly/beta/upgrade/c;->f:Lcom/tencent/bugly/beta/upgrade/UpgradeStateListener;

    aput-object v6, v1, v5

    .line 257
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-direct {p3, p4, v1}, Lcom/tencent/bugly/beta/global/d;-><init>(I[Ljava/lang/Object;)V

    .line 256
    invoke-static {p3}, Lcom/tencent/bugly/beta/utils/e;->a(Ljava/lang/Runnable;)V

    .line 260
    :cond_6
    iget-object p3, p0, Lcom/tencent/bugly/beta/upgrade/c;->e:Lcom/tencent/bugly/beta/upgrade/UpgradeListener;

    if-eqz p3, :cond_7

    .line 262
    monitor-exit p5

    return-void

    :cond_7
    if-nez p1, :cond_e

    .line 266
    iget-object p3, p0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    iget-object p3, p3, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-byte p3, p3, Lcom/tencent/bugly/proguard/y;->g:B

    if-eq p3, v2, :cond_e

    .line 268
    iget-object p3, p0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    iget-boolean p3, p3, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->d:Z

    if-eqz p3, :cond_c

    sget-object p3, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-boolean p3, p3, Lcom/tencent/bugly/beta/global/e;->e:Z

    if-eqz p3, :cond_c

    .line 270
    sget-object p3, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object p3, p3, Lcom/tencent/bugly/beta/global/e;->s:Landroid/content/Context;

    invoke-static {p3}, Lcom/tencent/bugly/beta/global/a;->a(Landroid/content/Context;)I

    move-result p3

    if-ne p3, v4, :cond_8

    sget-object p3, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-boolean p3, p3, Lcom/tencent/bugly/beta/global/e;->S:Z

    if-nez p3, :cond_9

    :cond_8
    sget-object p3, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object p3, p3, Lcom/tencent/bugly/beta/global/e;->s:Landroid/content/Context;

    .line 272
    invoke-static {p3}, Lcom/tencent/bugly/beta/global/a;->a(Landroid/content/Context;)I

    move-result p3

    if-ne p3, v0, :cond_a

    sget-object p3, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-boolean p3, p3, Lcom/tencent/bugly/beta/global/e;->T:Z

    if-eqz p3, :cond_a

    .line 274
    :cond_9
    invoke-direct {p0}, Lcom/tencent/bugly/beta/upgrade/c;->c()V

    .line 275
    monitor-exit p5

    return-void

    :cond_a
    if-nez p2, :cond_b

    .line 280
    invoke-direct {p0, p1}, Lcom/tencent/bugly/beta/upgrade/c;->a(Z)V

    .line 282
    :cond_b
    monitor-exit p5

    return-void

    .line 286
    :cond_c
    iget-object p3, p0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    iget-wide p3, p3, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->c:J

    iget-object v1, p0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    iget-object v1, v1, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-wide v1, v1, Lcom/tencent/bugly/proguard/y;->i:J

    const/4 v5, 0x0

    add-long/2addr p3, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    cmp-long v5, p3, v1

    if-gtz v5, :cond_d

    iget-object p3, p0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    iget-object p3, p3, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget p3, p3, Lcom/tencent/bugly/proguard/y;->h:I

    iget-object p4, p0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    iget p4, p4, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->b:I

    sub-int/2addr p3, p4

    if-lez p3, :cond_d

    iget-object p3, p0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    iget-object p3, p3, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-byte p3, p3, Lcom/tencent/bugly/proguard/y;->g:B

    if-ne p3, v3, :cond_e

    .line 289
    :cond_d
    monitor-exit p5

    return-void

    :cond_e
    if-nez p2, :cond_14

    .line 296
    sget-object p2, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object p2, p2, Lcom/tencent/bugly/beta/global/e;->s:Landroid/content/Context;

    invoke-static {p2}, Lcom/tencent/bugly/beta/global/a;->a(Landroid/content/Context;)I

    move-result p2

    if-ne p2, v4, :cond_f

    sget-object p2, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-boolean p2, p2, Lcom/tencent/bugly/beta/global/e;->S:Z

    if-nez p2, :cond_10

    :cond_f
    sget-object p2, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object p2, p2, Lcom/tencent/bugly/beta/global/e;->s:Landroid/content/Context;

    .line 298
    invoke-static {p2}, Lcom/tencent/bugly/beta/global/a;->a(Landroid/content/Context;)I

    move-result p2

    if-ne p2, v0, :cond_11

    sget-object p2, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-boolean p2, p2, Lcom/tencent/bugly/beta/global/e;->T:Z

    if-eqz p2, :cond_11

    :cond_10
    if-nez p1, :cond_11

    .line 300
    invoke-direct {p0}, Lcom/tencent/bugly/beta/upgrade/c;->c()V

    .line 301
    monitor-exit p5

    return-void

    .line 303
    :cond_11
    invoke-direct {p0, p1}, Lcom/tencent/bugly/beta/upgrade/c;->a(Z)V

    goto :goto_2

    .line 306
    :cond_12
    iget-object p3, p0, Lcom/tencent/bugly/beta/upgrade/c;->f:Lcom/tencent/bugly/beta/upgrade/UpgradeStateListener;

    if-eqz p3, :cond_13

    .line 307
    new-instance p2, Lcom/tencent/bugly/beta/global/d;

    new-array p3, v3, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->f:Lcom/tencent/bugly/beta/upgrade/UpgradeStateListener;

    aput-object v0, p3, v5

    .line 309
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, v4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p3, v2

    invoke-direct {p2, p4, p3}, Lcom/tencent/bugly/beta/global/d;-><init>(I[Ljava/lang/Object;)V

    .line 307
    invoke-static {p2}, Lcom/tencent/bugly/beta/utils/e;->a(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_13
    if-eqz p1, :cond_14

    if-nez p2, :cond_14

    .line 311
    new-instance p1, Lcom/tencent/bugly/beta/global/d;

    new-array p2, v4, [Ljava/lang/Object;

    sget-object p3, Lcom/tencent/bugly/beta/Beta;->strToastYourAreTheLatestVersion:Ljava/lang/String;

    aput-object p3, p2, v5

    invoke-direct {p1, v1, p2}, Lcom/tencent/bugly/beta/global/d;-><init>(I[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/tencent/bugly/beta/utils/e;->a(Ljava/lang/Runnable;)V

    .line 315
    :cond_14
    :goto_2
    monitor-exit p5

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
