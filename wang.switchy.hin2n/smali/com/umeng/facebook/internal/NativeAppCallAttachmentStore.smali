.class public final Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore;
.super Ljava/lang/Object;
.source "NativeAppCallAttachmentStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore$Attachment;
    }
.end annotation


# static fields
.field static final ATTACHMENTS_DIR_NAME:Ljava/lang/String; = "com.facebook.NativeAppCallAttachmentStore.files"

.field private static final TAG:Ljava/lang/String; = "com.umeng.facebook.internal.NativeAppCallAttachmentStore"

.field private static attachmentsDirectory:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAttachments(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore$Attachment;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_7

    .line 108
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 113
    :cond_0
    sget-object v0, Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore;->attachmentsDirectory:Ljava/io/File;

    if-nez v0, :cond_1

    .line 114
    invoke-static {}, Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore;->cleanupAllAttachments()V

    .line 117
    :cond_1
    invoke-static {}, Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore;->ensureAttachmentsDirectoryExists()Ljava/io/File;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 122
    :try_start_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore$Attachment;

    .line 123
    invoke-static {v1}, Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore$Attachment;->access$100(Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 128
    :cond_3
    invoke-static {v1}, Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore$Attachment;->access$200(Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Ljava/util/UUID;

    move-result-object v2

    .line 129
    invoke-static {v1}, Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore$Attachment;->access$300(Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 127
    invoke-static {v2, v3, v4}, Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore;->getAttachmentFile(Ljava/util/UUID;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v2

    .line 131
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-static {v1}, Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore$Attachment;->access$400(Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 134
    invoke-static {v1}, Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore$Attachment;->access$400(Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore;->processAttachmentBitmap(Landroid/graphics/Bitmap;Ljava/io/File;)V

    goto :goto_0

    .line 135
    :cond_4
    invoke-static {v1}, Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore$Attachment;->access$500(Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 137
    invoke-static {v1}, Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore$Attachment;->access$500(Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Landroid/net/Uri;

    move-result-object v3

    .line 138
    invoke-static {v1}, Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore$Attachment;->access$600(Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Z

    move-result v1

    .line 136
    invoke-static {v3, v1, v2}, Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore;->processAttachmentFile(Landroid/net/Uri;ZLjava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_5
    return-void

    :catch_0
    move-exception p0

    .line 143
    sget-object v1, Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got unexpected exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 146
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 151
    :cond_6
    new-instance v0, Lcom/umeng/facebook/FacebookException;

    invoke-direct {v0, p0}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_7
    :goto_2
    return-void
.end method

.method public static cleanupAllAttachments()V
    .locals 1

    .line 230
    invoke-static {}, Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore;->getAttachmentsDirectory()Ljava/io/File;

    move-result-object v0

    .line 231
    invoke-static {v0}, Lcom/umeng/facebook/internal/Utility;->deleteDirectory(Ljava/io/File;)V

    return-void
.end method

.method public static cleanupAttachmentsForCall(Ljava/util/UUID;)V
    .locals 1

    const/4 v0, 0x0

    .line 161
    invoke-static {p0, v0}, Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore;->getAttachmentsDirectoryForCall(Ljava/util/UUID;Z)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 163
    invoke-static {p0}, Lcom/umeng/facebook/internal/Utility;->deleteDirectory(Ljava/io/File;)V

    :cond_0
    return-void
.end method

.method public static createAttachment(Ljava/util/UUID;Landroid/graphics/Bitmap;)Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore$Attachment;
    .locals 2

    const-string v0, "callId"

    .line 63
    invoke-static {p0, v0}, Lcom/umeng/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachmentBitmap"

    .line 64
    invoke-static {p1, v0}, Lcom/umeng/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    new-instance v0, Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore$Attachment;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore$Attachment;-><init>(Ljava/util/UUID;Landroid/graphics/Bitmap;Landroid/net/Uri;Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore$1;)V

    return-object v0
.end method

.method public static createAttachment(Ljava/util/UUID;Landroid/net/Uri;)Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore$Attachment;
    .locals 2

    const-string v0, "callId"

    .line 70
    invoke-static {p0, v0}, Lcom/umeng/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachmentUri"

    .line 71
    invoke-static {p1, v0}, Lcom/umeng/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    new-instance v0, Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore$Attachment;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, v1}, Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore$Attachment;-><init>(Ljava/util/UUID;Landroid/graphics/Bitmap;Landroid/net/Uri;Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore$1;)V

    return-object v0
.end method

.method static ensureAttachmentsDirectoryExists()Ljava/io/File;
    .locals 1

    .line 193
    invoke-static {}, Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore;->getAttachmentsDirectory()Ljava/io/File;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    return-object v0
.end method

.method static getAttachmentFile(Ljava/util/UUID;Ljava/lang/String;Z)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    invoke-static {p0, p2}, Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore;->getAttachmentsDirectoryForCall(Ljava/util/UUID;Z)Ljava/io/File;

    move-result-object p0

    const/4 p2, 0x0

    if-nez p0, :cond_0

    return-object p2

    .line 221
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object p2
.end method

.method static declared-synchronized getAttachmentsDirectory()Ljava/io/File;
    .locals 4

    const-class v0, Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore;

    monitor-enter v0

    .line 184
    :try_start_0
    sget-object v1, Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore;->attachmentsDirectory:Ljava/io/File;

    if-nez v1, :cond_0

    .line 185
    new-instance v1, Ljava/io/File;

    .line 186
    invoke-static {}, Lcom/umeng/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "com.facebook.NativeAppCallAttachmentStore.files"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore;->attachmentsDirectory:Ljava/io/File;

    .line 189
    :cond_0
    sget-object v1, Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore;->attachmentsDirectory:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 183
    monitor-exit v0

    throw v1
.end method

.method static getAttachmentsDirectoryForCall(Ljava/util/UUID;Z)Ljava/io/File;
    .locals 2

    .line 199
    sget-object v0, Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore;->attachmentsDirectory:Ljava/io/File;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 203
    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore;->attachmentsDirectory:Ljava/io/File;

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 204
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    .line 205
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    return-object v0
.end method

.method public static openAttachment(Ljava/util/UUID;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 169
    invoke-static {p1}, Lcom/umeng/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 175
    :try_start_0
    invoke-static {p0, p1, v0}, Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore;->getAttachmentFile(Ljava/util/UUID;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 179
    :catch_0
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-direct {p0}, Ljava/io/FileNotFoundException;-><init>()V

    throw p0

    .line 171
    :cond_0
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-direct {p0}, Ljava/io/FileNotFoundException;-><init>()V

    throw p0
.end method

.method private static processAttachmentBitmap(Landroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 79
    :try_start_0
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p0, p1, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    invoke-static {v0}, Lcom/umeng/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0}, Lcom/umeng/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method

.method private static processAttachmentFile(Landroid/net/Uri;ZLjava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    if-nez p1, :cond_0

    .line 93
    :try_start_0
    new-instance p1, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 96
    :cond_0
    invoke-static {}, Lcom/umeng/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 98
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    .line 101
    :goto_0
    invoke-static {p1, v0}, Lcom/umeng/facebook/internal/Utility;->copyAndCloseInputStream(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    invoke-static {v0}, Lcom/umeng/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :goto_1
    invoke-static {v0}, Lcom/umeng/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method