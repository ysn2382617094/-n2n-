.class public Lcom/tencent/bugly/beta/global/e;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field public static E:Lcom/tencent/bugly/beta/global/e;

.field public static a:I


# instance fields
.field public A:Landroid/content/SharedPreferences;

.field public B:Landroid/util/DisplayMetrics;

.field public C:Z

.field public D:Z

.field public F:Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;

.field public G:Ljava/io/File;

.field public H:Ljava/io/File;

.field public I:Ljava/io/File;

.field public J:Ljava/lang/String;

.field public K:Ljava/lang/String;

.field public L:Ljava/lang/String;

.field public M:Ljava/lang/String;

.field public N:Z

.field public O:I

.field public P:Ljava/lang/String;

.field public Q:Z

.field public R:Z

.field public S:Z

.field public T:Z

.field public U:Z

.field public V:Z

.field public W:Lcom/tencent/bugly/beta/interfaces/BetaPatchListener;

.field public X:Z

.field public Y:Z

.field public Z:Z

.field public final aa:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public ab:Z

.field public ac:Z

.field public ad:Z

.field public ae:I

.field public b:J

.field public c:J

.field public d:Z

.field public e:Z

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:Lcom/tencent/bugly/beta/ui/UILifecycleListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/bugly/beta/ui/UILifecycleListener<",
            "Lcom/tencent/bugly/beta/UpgradeInfo;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljava/io/File;

.field public final m:Ljava/util/List;
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

.field public final n:Ljava/util/List;
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

.field public o:I

.field public p:Lcom/tencent/bugly/beta/download/b;

.field public q:Lcom/tencent/bugly/beta/download/DownloadListener;

.field public r:Ljava/io/File;

.field public s:Landroid/content/Context;

.field public t:Ljava/io/File;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:I

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Landroid/content/pm/PackageInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 85
    new-instance v0, Lcom/tencent/bugly/beta/global/e;

    invoke-direct {v0}, Lcom/tencent/bugly/beta/global/e;-><init>()V

    sput-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0xbb8

    .line 45
    iput-wide v0, p0, Lcom/tencent/bugly/beta/global/e;->b:J

    const-wide/16 v0, 0x0

    .line 46
    iput-wide v0, p0, Lcom/tencent/bugly/beta/global/e;->c:J

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/tencent/bugly/beta/global/e;->d:Z

    .line 48
    iput-boolean v0, p0, Lcom/tencent/bugly/beta/global/e;->e:Z

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tencent/bugly/beta/global/e;->m:Ljava/util/List;

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tencent/bugly/beta/global/e;->n:Ljava/util/List;

    const/high16 v1, -0x80000000

    .line 75
    iput v1, p0, Lcom/tencent/bugly/beta/global/e;->w:I

    const-string v1, ""

    .line 76
    iput-object v1, p0, Lcom/tencent/bugly/beta/global/e;->x:Ljava/lang/String;

    const-string v1, ""

    .line 77
    iput-object v1, p0, Lcom/tencent/bugly/beta/global/e;->y:Ljava/lang/String;

    .line 83
    iput-boolean v0, p0, Lcom/tencent/bugly/beta/global/e;->C:Z

    const/4 v1, 0x0

    .line 84
    iput-boolean v1, p0, Lcom/tencent/bugly/beta/global/e;->D:Z

    const-string v2, ""

    .line 93
    iput-object v2, p0, Lcom/tencent/bugly/beta/global/e;->J:Ljava/lang/String;

    const-string v2, ""

    .line 94
    iput-object v2, p0, Lcom/tencent/bugly/beta/global/e;->K:Ljava/lang/String;

    const-string v2, ""

    .line 95
    iput-object v2, p0, Lcom/tencent/bugly/beta/global/e;->L:Ljava/lang/String;

    const-string v2, ""

    .line 96
    iput-object v2, p0, Lcom/tencent/bugly/beta/global/e;->M:Ljava/lang/String;

    .line 97
    iput-boolean v1, p0, Lcom/tencent/bugly/beta/global/e;->N:Z

    .line 98
    iput v1, p0, Lcom/tencent/bugly/beta/global/e;->O:I

    const-string v2, ""

    .line 99
    iput-object v2, p0, Lcom/tencent/bugly/beta/global/e;->P:Ljava/lang/String;

    .line 102
    iput-boolean v1, p0, Lcom/tencent/bugly/beta/global/e;->Q:Z

    .line 104
    iput-boolean v0, p0, Lcom/tencent/bugly/beta/global/e;->R:Z

    .line 106
    iput-boolean v1, p0, Lcom/tencent/bugly/beta/global/e;->S:Z

    .line 107
    iput-boolean v1, p0, Lcom/tencent/bugly/beta/global/e;->T:Z

    .line 109
    iput-boolean v0, p0, Lcom/tencent/bugly/beta/global/e;->U:Z

    .line 111
    iput-boolean v0, p0, Lcom/tencent/bugly/beta/global/e;->V:Z

    .line 115
    iput-boolean v1, p0, Lcom/tencent/bugly/beta/global/e;->X:Z

    .line 116
    iput-boolean v0, p0, Lcom/tencent/bugly/beta/global/e;->Y:Z

    .line 117
    iput-boolean v1, p0, Lcom/tencent/bugly/beta/global/e;->Z:Z

    .line 118
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/tencent/bugly/beta/global/e;->aa:Ljava/util/List;

    .line 120
    iput-boolean v1, p0, Lcom/tencent/bugly/beta/global/e;->ab:Z

    .line 121
    iput-boolean v1, p0, Lcom/tencent/bugly/beta/global/e;->ac:Z

    .line 366
    iput v0, p0, Lcom/tencent/bugly/beta/global/e;->ae:I

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;)V
    .locals 8

    monitor-enter p0

    .line 131
    :try_start_0
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/beta/global/e;->s:Landroid/content/Context;

    .line 132
    iget-object v0, p0, Lcom/tencent/bugly/beta/global/e;->s:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :try_start_1
    iget-object v1, p0, Lcom/tencent/bugly/beta/global/e;->s:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/beta/global/e;->z:Landroid/content/pm/PackageInfo;

    .line 136
    iget v1, p0, Lcom/tencent/bugly/beta/global/e;->w:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    .line 137
    iget-object v1, p0, Lcom/tencent/bugly/beta/global/e;->z:Landroid/content/pm/PackageInfo;

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v1, p0, Lcom/tencent/bugly/beta/global/e;->w:I

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/tencent/bugly/beta/global/e;->x:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    iget-object v1, p0, Lcom/tencent/bugly/beta/global/e;->z:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/bugly/beta/global/e;->x:Ljava/lang/String;

    .line 143
    :cond_1
    iget-object v1, p0, Lcom/tencent/bugly/beta/global/e;->z:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/bugly/beta/global/e;->y:Ljava/lang/String;

    .line 144
    iget-object v1, p0, Lcom/tencent/bugly/beta/global/e;->P:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 145
    iget-object v1, p0, Lcom/tencent/bugly/beta/global/e;->s:Landroid/content/Context;

    const-string v2, "BUGLY_CHANNEL"

    invoke-static {v1, v2}, Lcom/tencent/bugly/beta/global/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/beta/global/e;->P:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 148
    :try_start_2
    invoke-static {v1}, Lcom/tencent/bugly/proguard/an;->b(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 149
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    const-string v1, "window"

    .line 153
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 154
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v2, p0, Lcom/tencent/bugly/beta/global/e;->B:Landroid/util/DisplayMetrics;

    if-eqz v1, :cond_3

    .line 155
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 156
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/bugly/beta/global/e;->B:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 159
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/bugly/beta/global/e;->s:Landroid/content/Context;

    .line 160
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/.beta/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/apk/"

    const-string v3, "/res/"

    .line 164
    iget-object v4, p0, Lcom/tencent/bugly/beta/global/e;->l:Ljava/io/File;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/tencent/bugly/beta/global/e;->l:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    .line 172
    :cond_4
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/tencent/bugly/beta/global/e;->l:Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/tencent/bugly/beta/global/e;->t:Ljava/io/File;

    .line 173
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/tencent/bugly/beta/global/e;->l:Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/tencent/bugly/beta/global/e;->r:Ljava/io/File;

    goto :goto_2

    .line 165
    :cond_5
    :goto_1
    new-instance v4, Ljava/io/File;

    sget-object v5, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 166
    invoke-static {v5}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 167
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v5, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/tencent/bugly/beta/global/e;->l:Ljava/io/File;

    .line 168
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/tencent/bugly/beta/global/e;->l:Ljava/io/File;

    invoke-direct {v1, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tencent/bugly/beta/global/e;->t:Ljava/io/File;

    .line 169
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/tencent/bugly/beta/global/e;->l:Ljava/io/File;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tencent/bugly/beta/global/e;->r:Ljava/io/File;

    :goto_2
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 176
    iget-object v2, p0, Lcom/tencent/bugly/beta/global/e;->z:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 177
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    const/4 v3, 0x2

    if-eqz v0, :cond_8

    :try_start_3
    const-string v0, "mounted"

    .line 180
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tencent/bugly/beta/global/e;->t:Ljava/io/File;

    .line 181
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/tencent/bugly/beta/global/e;->t:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/tencent/bugly/beta/global/e;->r:Ljava/io/File;

    .line 182
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/tencent/bugly/beta/global/e;->r:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_5

    .line 184
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/tencent/bugly/beta/global/e;->s:Landroid/content/Context;

    const-string v4, "apk"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/beta/global/e;->t:Ljava/io/File;

    .line 185
    iget-object v0, p0, Lcom/tencent/bugly/beta/global/e;->s:Landroid/content/Context;

    const-string v4, "res"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/beta/global/e;->r:Ljava/io/File;

    .line 187
    iget-object v0, p0, Lcom/tencent/bugly/beta/global/e;->t:Ljava/io/File;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/bugly/beta/global/e;->t:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/bugly/beta/global/e;->r:Ljava/io/File;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/bugly/beta/global/e;->r:Ljava/io/File;

    .line 188
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_a

    .line 189
    :cond_9
    iget-object v0, p0, Lcom/tencent/bugly/beta/global/e;->s:Landroid/content/Context;

    const-string v4, "apk"

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/beta/global/e;->t:Ljava/io/File;

    .line 190
    iget-object v0, p0, Lcom/tencent/bugly/beta/global/e;->s:Landroid/content/Context;

    const-string v4, "res"

    invoke-virtual {v0, v4, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/beta/global/e;->r:Ljava/io/File;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    .line 194
    :goto_5
    :try_start_4
    invoke-static {v0}, Lcom/tencent/bugly/proguard/an;->b(Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 195
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    :goto_6
    const-string v0, "apkSaveDir: %s, resSaveDir: %s"

    .line 199
    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/tencent/bugly/beta/global/e;->t:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v4, p0, Lcom/tencent/bugly/beta/global/e;->r:Ljava/io/File;

    .line 200
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 199
    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".BETA_VALUES"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/bugly/beta/global/e;->s:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/ap;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/beta/global/e;->A:Landroid/content/SharedPreferences;

    const-string p1, "isFirstRun"

    .line 204
    invoke-static {p1, v1}, Lcom/tencent/bugly/beta/global/a;->b(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/bugly/beta/global/e;->C:Z

    .line 205
    iget-boolean p1, p0, Lcom/tencent/bugly/beta/global/e;->C:Z

    if-eqz p1, :cond_b

    const-string p1, "isFirstRun"

    .line 206
    invoke-static {p1, v2}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;Z)V

    .line 209
    :cond_b
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 210
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object p1

    iget-boolean p1, p1, Lcom/tencent/bugly/crashreport/common/info/a;->K:Z

    iput-boolean p1, p0, Lcom/tencent/bugly/beta/global/e;->Q:Z

    :cond_c
    const-string p1, "us.bch"

    .line 213
    sget-object v0, Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;

    iput-object p1, p0, Lcom/tencent/bugly/beta/global/e;->F:Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;

    .line 214
    iget-object p1, p0, Lcom/tencent/bugly/beta/global/e;->F:Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;

    if-nez p1, :cond_d

    .line 215
    new-instance p1, Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;

    invoke-direct {p1}, Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;-><init>()V

    iput-object p1, p0, Lcom/tencent/bugly/beta/global/e;->F:Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 217
    :cond_d
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 130
    monitor-exit p0

    throw p1
.end method
