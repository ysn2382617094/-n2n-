.class public Lcom/tencent/bugly/beta/tinker/TinkerPatchReporter;
.super Lcom/tencent/tinker/lib/reporter/DefaultPatchReporter;
.source "BUGLY"


# instance fields
.field private final userPatchReporter:Lcom/tencent/tinker/lib/reporter/PatchReporter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/tencent/tinker/lib/reporter/DefaultPatchReporter;-><init>(Landroid/content/Context;)V

    .line 43
    sget-object p1, Lcom/tencent/bugly/beta/tinker/TinkerManager;->userPatchReporter:Lcom/tencent/tinker/lib/reporter/PatchReporter;

    iput-object p1, p0, Lcom/tencent/bugly/beta/tinker/TinkerPatchReporter;->userPatchReporter:Lcom/tencent/tinker/lib/reporter/PatchReporter;

    return-void
.end method


# virtual methods
.method public onPatchDexOptFail(Ljava/io/File;Ljava/util/List;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 61
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/tinker/lib/reporter/DefaultPatchReporter;->onPatchDexOptFail(Ljava/io/File;Ljava/util/List;Ljava/lang/Throwable;)V

    .line 62
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerPatchReporter;->userPatchReporter:Lcom/tencent/tinker/lib/reporter/PatchReporter;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerPatchReporter;->userPatchReporter:Lcom/tencent/tinker/lib/reporter/PatchReporter;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/tinker/lib/reporter/PatchReporter;->onPatchDexOptFail(Ljava/io/File;Ljava/util/List;Ljava/lang/Throwable;)V

    return-void

    .line 67
    :cond_0
    invoke-static {p3}, Lcom/tencent/bugly/beta/tinker/TinkerReport;->onApplyDexOptFail(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onPatchException(Ljava/io/File;Ljava/lang/Throwable;)V
    .locals 1

    .line 72
    invoke-super {p0, p1, p2}, Lcom/tencent/tinker/lib/reporter/DefaultPatchReporter;->onPatchException(Ljava/io/File;Ljava/lang/Throwable;)V

    .line 74
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerPatchReporter;->userPatchReporter:Lcom/tencent/tinker/lib/reporter/PatchReporter;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerPatchReporter;->userPatchReporter:Lcom/tencent/tinker/lib/reporter/PatchReporter;

    invoke-interface {v0, p1, p2}, Lcom/tencent/tinker/lib/reporter/PatchReporter;->onPatchException(Ljava/io/File;Ljava/lang/Throwable;)V

    return-void

    .line 79
    :cond_0
    invoke-static {p2}, Lcom/tencent/bugly/beta/tinker/TinkerReport;->onApplyCrash(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onPatchInfoCorrupted(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 84
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/tinker/lib/reporter/DefaultPatchReporter;->onPatchInfoCorrupted(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerPatchReporter;->userPatchReporter:Lcom/tencent/tinker/lib/reporter/PatchReporter;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerPatchReporter;->userPatchReporter:Lcom/tencent/tinker/lib/reporter/PatchReporter;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/tinker/lib/reporter/PatchReporter;->onPatchInfoCorrupted(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 91
    :cond_0
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerReport;->onApplyInfoCorrupted()V

    return-void
.end method

.method public onPatchPackageCheckFail(Ljava/io/File;I)V
    .locals 1

    .line 96
    invoke-super {p0, p1, p2}, Lcom/tencent/tinker/lib/reporter/DefaultPatchReporter;->onPatchPackageCheckFail(Ljava/io/File;I)V

    .line 98
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerPatchReporter;->userPatchReporter:Lcom/tencent/tinker/lib/reporter/PatchReporter;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerPatchReporter;->userPatchReporter:Lcom/tencent/tinker/lib/reporter/PatchReporter;

    invoke-interface {v0, p1, p2}, Lcom/tencent/tinker/lib/reporter/PatchReporter;->onPatchPackageCheckFail(Ljava/io/File;I)V

    return-void

    .line 103
    :cond_0
    invoke-static {p2}, Lcom/tencent/bugly/beta/tinker/TinkerReport;->onApplyPackageCheckFail(I)V

    return-void
.end method

.method public onPatchResult(Ljava/io/File;ZJ)V
    .locals 1

    .line 108
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/tinker/lib/reporter/DefaultPatchReporter;->onPatchResult(Ljava/io/File;ZJ)V

    .line 110
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerPatchReporter;->userPatchReporter:Lcom/tencent/tinker/lib/reporter/PatchReporter;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerPatchReporter;->userPatchReporter:Lcom/tencent/tinker/lib/reporter/PatchReporter;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/tinker/lib/reporter/PatchReporter;->onPatchResult(Ljava/io/File;ZJ)V

    return-void

    .line 115
    :cond_0
    invoke-static {p3, p4, p2}, Lcom/tencent/bugly/beta/tinker/TinkerReport;->onApplied(JZ)V

    .line 116
    iget-object p1, p0, Lcom/tencent/bugly/beta/tinker/TinkerPatchReporter;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/tinker/lib/util/UpgradePatchRetry;->getInstance(Landroid/content/Context;)Lcom/tencent/tinker/lib/util/UpgradePatchRetry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/tinker/lib/util/UpgradePatchRetry;->onPatchServiceResult()V

    return-void
.end method

.method public onPatchServiceStart(Landroid/content/Intent;)V
    .locals 1

    .line 48
    invoke-super {p0, p1}, Lcom/tencent/tinker/lib/reporter/DefaultPatchReporter;->onPatchServiceStart(Landroid/content/Intent;)V

    .line 50
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerPatchReporter;->userPatchReporter:Lcom/tencent/tinker/lib/reporter/PatchReporter;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerPatchReporter;->userPatchReporter:Lcom/tencent/tinker/lib/reporter/PatchReporter;

    invoke-interface {v0, p1}, Lcom/tencent/tinker/lib/reporter/PatchReporter;->onPatchServiceStart(Landroid/content/Intent;)V

    return-void

    .line 55
    :cond_0
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerReport;->onApplyPatchServiceStart()V

    .line 56
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerPatchReporter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tinker/lib/util/UpgradePatchRetry;->getInstance(Landroid/content/Context;)Lcom/tencent/tinker/lib/util/UpgradePatchRetry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/lib/util/UpgradePatchRetry;->onPatchServiceStart(Landroid/content/Intent;)V

    return-void
.end method

.method public onPatchTypeExtractFail(Ljava/io/File;Ljava/io/File;Ljava/lang/String;I)V
    .locals 1

    .line 121
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/tinker/lib/reporter/DefaultPatchReporter;->onPatchTypeExtractFail(Ljava/io/File;Ljava/io/File;Ljava/lang/String;I)V

    .line 123
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerPatchReporter;->userPatchReporter:Lcom/tencent/tinker/lib/reporter/PatchReporter;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerPatchReporter;->userPatchReporter:Lcom/tencent/tinker/lib/reporter/PatchReporter;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/tinker/lib/reporter/PatchReporter;->onPatchTypeExtractFail(Ljava/io/File;Ljava/io/File;Ljava/lang/String;I)V

    return-void

    .line 128
    :cond_0
    invoke-static {p4}, Lcom/tencent/bugly/beta/tinker/TinkerReport;->onApplyExtractFail(I)V

    return-void
.end method

.method public onPatchVersionCheckFail(Ljava/io/File;Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;Ljava/lang/String;)V
    .locals 1

    .line 133
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/tinker/lib/reporter/DefaultPatchReporter;->onPatchVersionCheckFail(Ljava/io/File;Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerPatchReporter;->userPatchReporter:Lcom/tencent/tinker/lib/reporter/PatchReporter;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerPatchReporter;->userPatchReporter:Lcom/tencent/tinker/lib/reporter/PatchReporter;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/tinker/lib/reporter/PatchReporter;->onPatchVersionCheckFail(Ljava/io/File;Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;Ljava/lang/String;)V

    return-void

    .line 140
    :cond_0
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerReport;->onApplyVersionCheckFail()V

    return-void
.end method
