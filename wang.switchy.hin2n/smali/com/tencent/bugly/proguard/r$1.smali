.class final Lcom/tencent/bugly/proguard/r$1;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/r;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/bugly/beta/global/e;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/beta/global/e;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/tencent/bugly/proguard/r$1;->a:Lcom/tencent/bugly/beta/global/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyFailure(Ljava/lang/String;)V
    .locals 3

    .line 214
    iget-object v0, p0, Lcom/tencent/bugly/proguard/r$1;->a:Lcom/tencent/bugly/beta/global/e;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tencent/bugly/beta/global/e;->N:Z

    const-string v0, "PatchResult"

    .line 215
    invoke-static {v0, v1}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;Z)V

    const-string v0, "IS_PATCHING"

    .line 216
    invoke-static {v0, v1}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;Z)V

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tinker patch failure, result: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 219
    iget-object v0, p0, Lcom/tencent/bugly/proguard/r$1;->a:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->W:Lcom/tencent/bugly/beta/interfaces/BetaPatchListener;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/tencent/bugly/proguard/r$1;->a:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->W:Lcom/tencent/bugly/beta/interfaces/BetaPatchListener;

    invoke-interface {v0, p1}, Lcom/tencent/bugly/beta/interfaces/BetaPatchListener;->onApplyFailure(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onApplySuccess(Ljava/lang/String;)V
    .locals 4

    .line 194
    iget-object v0, p0, Lcom/tencent/bugly/proguard/r$1;->a:Lcom/tencent/bugly/beta/global/e;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tencent/bugly/beta/global/e;->ac:Z

    .line 195
    iget-object v0, p0, Lcom/tencent/bugly/proguard/r$1;->a:Lcom/tencent/bugly/beta/global/e;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/tencent/bugly/beta/global/e;->N:Z

    const-string v0, "IS_PATCHING"

    .line 197
    invoke-static {v0, v1}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;Z)V

    const-string v0, "PatchResult"

    .line 198
    invoke-static {v0, v2}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;Z)V

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tinker patch success, result: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 202
    iget-object v0, p0, Lcom/tencent/bugly/proguard/r$1;->a:Lcom/tencent/bugly/beta/global/e;

    iget-boolean v0, v0, Lcom/tencent/bugly/beta/global/e;->X:Z

    if-eqz v0, :cond_0

    .line 203
    new-instance v0, Lcom/tencent/bugly/beta/ui/e;

    invoke-direct {v0}, Lcom/tencent/bugly/beta/ui/e;-><init>()V

    .line 204
    invoke-static {v0, v2}, Lcom/tencent/bugly/beta/ui/g;->a(Lcom/tencent/bugly/beta/ui/b;Z)V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/r$1;->a:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->W:Lcom/tencent/bugly/beta/interfaces/BetaPatchListener;

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/tencent/bugly/proguard/r$1;->a:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->W:Lcom/tencent/bugly/beta/interfaces/BetaPatchListener;

    invoke-interface {v0, p1}, Lcom/tencent/bugly/beta/interfaces/BetaPatchListener;->onApplySuccess(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onDownloadFailure(Ljava/lang/String;)V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/tencent/bugly/proguard/r$1;->a:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->W:Lcom/tencent/bugly/beta/interfaces/BetaPatchListener;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/tencent/bugly/proguard/r$1;->a:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->W:Lcom/tencent/bugly/beta/interfaces/BetaPatchListener;

    invoke-interface {v0, p1}, Lcom/tencent/bugly/beta/interfaces/BetaPatchListener;->onDownloadFailure(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDownloadSuccess(Ljava/lang/String;)V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/tencent/bugly/proguard/r$1;->a:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->W:Lcom/tencent/bugly/beta/interfaces/BetaPatchListener;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/tencent/bugly/proguard/r$1;->a:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->W:Lcom/tencent/bugly/beta/interfaces/BetaPatchListener;

    invoke-interface {v0, p1}, Lcom/tencent/bugly/beta/interfaces/BetaPatchListener;->onDownloadSuccess(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPatchRollback()V
    .locals 3

    const-string v0, "patch rollback callback."

    const/4 v1, 0x0

    .line 226
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 228
    iget-object v0, p0, Lcom/tencent/bugly/proguard/r$1;->a:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->W:Lcom/tencent/bugly/beta/interfaces/BetaPatchListener;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/tencent/bugly/proguard/r$1;->a:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->W:Lcom/tencent/bugly/beta/interfaces/BetaPatchListener;

    invoke-interface {v0}, Lcom/tencent/bugly/beta/interfaces/BetaPatchListener;->onPatchRollback()V

    .line 232
    :cond_0
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->getInstance()Lcom/tencent/bugly/beta/tinker/TinkerManager;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/bugly/proguard/r$1;->a:Lcom/tencent/bugly/beta/global/e;

    iget-object v2, v2, Lcom/tencent/bugly/beta/global/e;->s:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->getPatchDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 233
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->getInstance()Lcom/tencent/bugly/beta/tinker/TinkerManager;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/bugly/proguard/r$1;->a:Lcom/tencent/bugly/beta/global/e;

    iget-object v2, v2, Lcom/tencent/bugly/beta/global/e;->s:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->getPatchDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "IS_PATCH_ROLL_BACK"

    .line 235
    invoke-static {v0, v1}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public onPatchStart()V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/tencent/bugly/proguard/r$1;->a:Lcom/tencent/bugly/beta/global/e;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tencent/bugly/beta/global/e;->ac:Z

    const-string v0, "IS_PATCHING"

    .line 189
    invoke-static {v0, v1}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;Z)V

    return-void
.end method
