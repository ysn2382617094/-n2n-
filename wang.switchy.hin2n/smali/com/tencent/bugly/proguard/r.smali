.class public Lcom/tencent/bugly/proguard/r;
.super Ljava/lang/Object;
.source "BUGLY"


# direct methods
.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 18

    move-object/from16 v0, p0

    const-class v1, Lcom/tencent/bugly/proguard/r;

    monitor-enter v1

    .line 48
    :try_start_0
    sget-object v2, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    const-string v3, "dex"

    const/4 v4, 0x0

    .line 50
    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v5, "tmpPatch"

    const v6, 0x8000

    .line 51
    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 54
    new-instance v6, Ljava/io/File;

    const-string v7, "patch.apk"

    invoke-direct {v6, v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, v2, Lcom/tencent/bugly/beta/global/e;->G:Ljava/io/File;

    const-string v3, "PatchFile"

    const-string v6, ""

    .line 55
    invoke-static {v3, v6}, Lcom/tencent/bugly/beta/global/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "PatchFile"

    .line 56
    iget-object v6, v2, Lcom/tencent/bugly/beta/global/e;->G:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_0
    new-instance v3, Ljava/io/File;

    const-string v6, "tmpPatch.apk"

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v2, Lcom/tencent/bugly/beta/global/e;->H:Ljava/io/File;

    .line 62
    iget-object v3, v2, Lcom/tencent/bugly/beta/global/e;->G:Ljava/io/File;

    if-eqz v3, :cond_1

    const-string v3, "PatchFile"

    const-string v5, ""

    invoke-static {v3, v5}, Lcom/tencent/bugly/beta/global/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "PatchFile"

    .line 63
    iget-object v5, v2, Lcom/tencent/bugly/beta/global/e;->G:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v3, "tmpPatch"

    .line 67
    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/bugly/beta/global/e;->I:Ljava/io/File;

    .line 68
    iget-object v0, v2, Lcom/tencent/bugly/beta/global/e;->I:Ljava/io/File;

    if-eqz v0, :cond_2

    const-string v0, "PatchTmpDir"

    const-string v3, ""

    invoke-static {v0, v3}, Lcom/tencent/bugly/beta/global/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "PatchTmpDir"

    .line 69
    iget-object v3, v2, Lcom/tencent/bugly/beta/global/e;->G:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v0, "st.bch"

    .line 73
    sget-object v3, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v3}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    const/4 v3, 0x3

    const/4 v5, 0x1

    if-eqz v0, :cond_7

    .line 76
    iget-object v6, v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    if-eqz v6, :cond_7

    iget-object v6, v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget v6, v6, Lcom/tencent/bugly/proguard/y;->p:I

    if-ne v6, v3, :cond_7

    .line 79
    iget-object v6, v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v6, v6, Lcom/tencent/bugly/proguard/y;->l:Ljava/util/Map;

    if-eqz v6, :cond_3

    .line 80
    iget-object v6, v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v6, v6, Lcom/tencent/bugly/proguard/y;->l:Ljava/util/Map;

    const-string v7, "H2"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v2, Lcom/tencent/bugly/beta/global/e;->M:Ljava/lang/String;

    .line 81
    iget-object v6, v2, Lcom/tencent/bugly/beta/global/e;->M:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "G15"

    .line 83
    iget-object v7, v2, Lcom/tencent/bugly/beta/global/e;->M:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/tencent/bugly/proguard/ap;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v6, "PatchResult"

    .line 88
    invoke-static {v6, v4}, Lcom/tencent/bugly/beta/global/a;->b(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v2, Lcom/tencent/bugly/beta/global/e;->N:Z

    const-string v6, "PATCH_MAX_TIMES"

    const-string v7, "0"

    .line 91
    invoke-static {v6, v7}, Lcom/tencent/bugly/beta/global/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v2, Lcom/tencent/bugly/beta/global/e;->O:I

    .line 94
    iget-boolean v6, v2, Lcom/tencent/bugly/beta/global/e;->N:Z

    if-nez v6, :cond_5

    const-string v6, "[patch] inject failure"

    .line 95
    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v6, "UPLOAD_PATCH_RESULT"

    .line 96
    invoke-static {v6, v4}, Lcom/tencent/bugly/beta/global/a;->b(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "UPLOAD_PATCH_RESULT"

    .line 97
    invoke-static {v6, v5}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;Z)V

    .line 99
    sget-object v6, Lcom/tencent/bugly/proguard/p;->a:Lcom/tencent/bugly/proguard/p;

    new-instance v15, Lcom/tencent/bugly/proguard/w;

    const-string v8, "active"

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const/4 v11, 0x1

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    iget-object v7, v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v7, v7, Lcom/tencent/bugly/proguard/y;->m:Ljava/lang/String;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget v0, v0, Lcom/tencent/bugly/proguard/y;->p:I

    const/16 v17, 0x0

    move-object/from16 v16, v7

    move-object v7, v15

    move-object v3, v15

    move-object/from16 v15, v16

    move/from16 v16, v0

    invoke-direct/range {v7 .. v17}, Lcom/tencent/bugly/proguard/w;-><init>(Ljava/lang/String;JBJLcom/tencent/bugly/proguard/v;Ljava/lang/String;ILjava/util/Map;)V

    .line 99
    invoke-virtual {v6, v3}, Lcom/tencent/bugly/proguard/p;->a(Lcom/tencent/bugly/proguard/w;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "save patch failed event success!"

    .line 104
    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const-string v0, "save patch failed event failed!"

    .line 106
    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/an;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 110
    :goto_0
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->G:Ljava/io/File;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->G:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->G:Ljava/io/File;

    .line 111
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "[patch] delete patch.apk success"

    .line 112
    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_5
    const-string v3, "[patch] inject success"

    .line 117
    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v3, v6}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v3, "UPLOAD_PATCH_RESULT"

    .line 118
    invoke-static {v3, v4}, Lcom/tencent/bugly/beta/global/a;->b(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "UPLOAD_PATCH_RESULT"

    .line 119
    invoke-static {v3, v5}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;Z)V

    .line 122
    sget-object v3, Lcom/tencent/bugly/proguard/p;->a:Lcom/tencent/bugly/proguard/p;

    new-instance v15, Lcom/tencent/bugly/proguard/w;

    const-string v7, "active"

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    iget-object v6, v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v14, v6, Lcom/tencent/bugly/proguard/y;->m:Ljava/lang/String;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget v0, v0, Lcom/tencent/bugly/proguard/y;->p:I

    const/16 v16, 0x0

    move-object v6, v15

    move-object v5, v15

    move v15, v0

    invoke-direct/range {v6 .. v16}, Lcom/tencent/bugly/proguard/w;-><init>(Ljava/lang/String;JBJLcom/tencent/bugly/proguard/v;Ljava/lang/String;ILjava/util/Map;)V

    .line 122
    invoke-virtual {v3, v5}, Lcom/tencent/bugly/proguard/p;->a(Lcom/tencent/bugly/proguard/w;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "save patch success event success!"

    .line 127
    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    const-string v0, "save patch success event failed!"

    .line 129
    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/an;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1

    .line 135
    :cond_7
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->getInstance()Lcom/tencent/bugly/beta/tinker/TinkerManager;

    move-result-object v0

    iget-object v3, v2, Lcom/tencent/bugly/beta/global/e;->s:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->getPatchDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 136
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->getInstance()Lcom/tencent/bugly/beta/tinker/TinkerManager;

    move-result-object v0

    iget-object v3, v2, Lcom/tencent/bugly/beta/global/e;->s:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->getPatchDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "IS_PATCH_ROLL_BACK"

    .line 138
    invoke-static {v0, v4}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;Z)V

    :cond_8
    const-string v0, "IS_PATCH_ROLL_BACK"

    .line 142
    invoke-static {v0, v4}, Lcom/tencent/bugly/beta/global/a;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 143
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->getInstance()Lcom/tencent/bugly/beta/tinker/TinkerManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->onPatchRollback(Z)V

    .line 148
    :cond_9
    :goto_1
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->H:Ljava/io/File;

    if-eqz v0, :cond_a

    .line 149
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "[patch] delete tmpPatch.apk success"

    .line 150
    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 154
    :cond_a
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->G:Ljava/io/File;

    if-eqz v0, :cond_b

    .line 155
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "SHA"

    .line 156
    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/ap;->a(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 158
    sget-object v3, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iput-object v0, v3, Lcom/tencent/bugly/beta/global/e;->L:Ljava/lang/String;

    .line 162
    :cond_b
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->isTinkerManagerInstalled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 163
    iget-object v0, v2, Lcom/tencent/bugly/beta/global/e;->J:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 164
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->getTinkerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/bugly/beta/global/e;->J:Ljava/lang/String;

    .line 166
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TINKER_ID:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/tencent/bugly/beta/global/e;->J:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 167
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->getNewTinkerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/bugly/beta/global/e;->K:Ljava/lang/String;

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NEW_TINKER_ID:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/tencent/bugly/beta/global/e;->K:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 171
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->getInstance()Lcom/tencent/bugly/beta/tinker/TinkerManager;

    move-result-object v0

    new-instance v3, Lcom/tencent/bugly/proguard/r$1;

    invoke-direct {v3, v2}, Lcom/tencent/bugly/proguard/r$1;-><init>(Lcom/tencent/bugly/beta/global/e;)V

    invoke-virtual {v0, v3}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->setTinkerListener(Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerListener;)V

    :cond_d
    const-string v0, "BaseArchName"

    const-string v3, ""

    .line 242
    invoke-static {v0, v3}, Lcom/tencent/bugly/beta/global/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 245
    iget-object v0, v2, Lcom/tencent/bugly/beta/global/e;->s:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 246
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 248
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 258
    array-length v3, v0

    if-lez v3, :cond_15

    .line 260
    array-length v3, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2
    if-ge v5, v3, :cond_15

    aget-object v7, v0, v5

    .line 261
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".so"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 262
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".so"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "lib"

    .line 263
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    const-string v9, "lib"

    .line 264
    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x3

    add-int/2addr v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_e
    const/4 v10, 0x3

    .line 266
    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "libName:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v11, v4, [Ljava/lang/Object;

    invoke-static {v9, v11}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 267
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 268
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "soFilePath:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v11, v4, [Ljava/lang/Object;

    invoke-static {v9, v11}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 269
    iget-object v9, v2, Lcom/tencent/bugly/beta/global/e;->aa:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 270
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    const/4 v6, 0x1

    :cond_10
    if-nez v6, :cond_14

    .line 278
    invoke-static {v7}, Lcom/tencent/bugly/beta/global/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 279
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "archName:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v7, v9}, Lcom/tencent/bugly/proguard/an;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    if-eqz v6, :cond_11

    const-string v7, "armeabi-v5te"

    .line 280
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    const-string v6, "armeabi"

    .line 285
    :cond_11
    invoke-static {v8, v6}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "BaseArchName"

    const-string v8, ""

    .line 287
    invoke-static {v7, v8}, Lcom/tencent/bugly/beta/global/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_12

    const-string v7, "BaseArchName"

    .line 288
    invoke-static {v7, v6}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_12
    const/4 v6, 0x0

    goto :goto_4

    :cond_13
    const/4 v10, 0x3

    :cond_14
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 297
    :cond_15
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    .line 47
    monitor-exit v1

    throw v0
.end method
