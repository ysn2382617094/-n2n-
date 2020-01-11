.class final Lcom/orhanobut/logger/LoggerPrinter;
.super Ljava/lang/Object;
.source "LoggerPrinter.java"

# interfaces
.implements Lcom/orhanobut/logger/Printer;


# static fields
.field private static final ASSERT:I = 0x7

.field private static final BOTTOM_BORDER:Ljava/lang/String; = "\u255a\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550"

.field private static final BOTTOM_LEFT_CORNER:C = '\u255a'

.field private static final CHUNK_SIZE:I = 0xfa0

.field private static final DEBUG:I = 0x3

.field private static final DEFAULT_TAG:Ljava/lang/String; = "PRETTYLOGGER"

.field private static final DOUBLE_DIVIDER:Ljava/lang/String; = "\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550"

.field private static final ERROR:I = 0x6

.field private static final HORIZONTAL_DOUBLE_LINE:C = '\u2551'

.field private static final INFO:I = 0x4

.field private static final JSON_INDENT:I = 0x2

.field private static final MIDDLE_BORDER:Ljava/lang/String; = "\u255f\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

.field private static final MIDDLE_CORNER:C = '\u255f'

.field private static final MIN_STACK_OFFSET:I = 0x3

.field private static final SINGLE_DIVIDER:Ljava/lang/String; = "\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

.field private static final TOP_BORDER:Ljava/lang/String; = "\u2554\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550"

.field private static final TOP_LEFT_CORNER:C = '\u2554'

.field private static final VERBOSE:I = 0x2

.field private static final WARN:I = 0x5


# instance fields
.field private final localMethodCount:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final localTag:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final settings:Lcom/orhanobut/logger/Settings;

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/orhanobut/logger/LoggerPrinter;->localTag:Ljava/lang/ThreadLocal;

    .line 70
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/orhanobut/logger/LoggerPrinter;->localMethodCount:Ljava/lang/ThreadLocal;

    .line 75
    new-instance v0, Lcom/orhanobut/logger/Settings;

    invoke-direct {v0}, Lcom/orhanobut/logger/Settings;-><init>()V

    iput-object v0, p0, Lcom/orhanobut/logger/LoggerPrinter;->settings:Lcom/orhanobut/logger/Settings;

    const-string v0, "PRETTYLOGGER"

    .line 78
    invoke-virtual {p0, v0}, Lcom/orhanobut/logger/LoggerPrinter;->init(Ljava/lang/String;)Lcom/orhanobut/logger/Settings;

    return-void
.end method

.method private varargs createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_1

    .line 367
    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method private formatTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 348
    invoke-static {p1}, Lcom/orhanobut/logger/Helper;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/orhanobut/logger/LoggerPrinter;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/orhanobut/logger/Helper;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/orhanobut/logger/LoggerPrinter;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 351
    :cond_0
    iget-object p1, p0, Lcom/orhanobut/logger/LoggerPrinter;->tag:Ljava/lang/String;

    return-object p1
.end method

.method private getMethodCount()I
    .locals 2

    .line 371
    iget-object v0, p0, Lcom/orhanobut/logger/LoggerPrinter;->localMethodCount:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 372
    iget-object v1, p0, Lcom/orhanobut/logger/LoggerPrinter;->settings:Lcom/orhanobut/logger/Settings;

    invoke-virtual {v1}, Lcom/orhanobut/logger/Settings;->getMethodCount()I

    move-result v1

    if-eqz v0, :cond_0

    .line 374
    iget-object v1, p0, Lcom/orhanobut/logger/LoggerPrinter;->localMethodCount:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 375
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_0
    if-ltz v1, :cond_1

    return v1

    .line 378
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "methodCount cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getSimpleClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "."

    .line 343
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 344
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getStackOffset([Ljava/lang/StackTraceElement;)I
    .locals 4

    const/4 v0, 0x3

    .line 391
    :goto_0
    array-length v1, p1

    const/4 v2, -0x1

    if-ge v0, v1, :cond_1

    .line 392
    aget-object v1, p1, v0

    .line 393
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 394
    const-class v3, Lcom/orhanobut/logger/LoggerPrinter;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-class v3, Lcom/orhanobut/logger/Logger;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/2addr v0, v2

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private getTag()Ljava/lang/String;
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/orhanobut/logger/LoggerPrinter;->localTag:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 360
    iget-object v1, p0, Lcom/orhanobut/logger/LoggerPrinter;->localTag:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    return-object v0

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/orhanobut/logger/LoggerPrinter;->tag:Ljava/lang/String;

    return-object v0
.end method

.method private varargs declared-synchronized log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    monitor-enter p0

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/orhanobut/logger/LoggerPrinter;->settings:Lcom/orhanobut/logger/Settings;

    invoke-virtual {v0}, Lcom/orhanobut/logger/Settings;->getLogLevel()Lcom/orhanobut/logger/LogLevel;

    move-result-object v0

    sget-object v1, Lcom/orhanobut/logger/LogLevel;->NONE:Lcom/orhanobut/logger/LogLevel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    .line 252
    monitor-exit p0

    return-void

    .line 254
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/orhanobut/logger/LoggerPrinter;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 255
    invoke-direct {p0, p3, p4}, Lcom/orhanobut/logger/LoggerPrinter;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 256
    invoke-virtual {p0, p1, v0, p3, p2}, Lcom/orhanobut/logger/LoggerPrinter;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 250
    monitor-exit p0

    throw p1
.end method

.method private logBottomBorder(ILjava/lang/String;)V
    .locals 1

    const-string v0, "\u255a\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550"

    .line 302
    invoke-direct {p0, p1, p2, v0}, Lcom/orhanobut/logger/LoggerPrinter;->logChunk(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private logChunk(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 317
    invoke-direct {p0, p2}, Lcom/orhanobut/logger/LoggerPrinter;->formatTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 337
    iget-object p1, p0, Lcom/orhanobut/logger/LoggerPrinter;->settings:Lcom/orhanobut/logger/Settings;

    invoke-virtual {p1}, Lcom/orhanobut/logger/Settings;->getLogAdapter()Lcom/orhanobut/logger/LogAdapter;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/orhanobut/logger/LogAdapter;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 332
    :pswitch_0
    iget-object p1, p0, Lcom/orhanobut/logger/LoggerPrinter;->settings:Lcom/orhanobut/logger/Settings;

    invoke-virtual {p1}, Lcom/orhanobut/logger/Settings;->getLogAdapter()Lcom/orhanobut/logger/LogAdapter;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/orhanobut/logger/LogAdapter;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 320
    :pswitch_1
    iget-object p1, p0, Lcom/orhanobut/logger/LoggerPrinter;->settings:Lcom/orhanobut/logger/Settings;

    invoke-virtual {p1}, Lcom/orhanobut/logger/Settings;->getLogAdapter()Lcom/orhanobut/logger/LogAdapter;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/orhanobut/logger/LogAdapter;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 329
    :pswitch_2
    iget-object p1, p0, Lcom/orhanobut/logger/LoggerPrinter;->settings:Lcom/orhanobut/logger/Settings;

    invoke-virtual {p1}, Lcom/orhanobut/logger/Settings;->getLogAdapter()Lcom/orhanobut/logger/LogAdapter;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/orhanobut/logger/LogAdapter;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 323
    :pswitch_3
    iget-object p1, p0, Lcom/orhanobut/logger/LoggerPrinter;->settings:Lcom/orhanobut/logger/Settings;

    invoke-virtual {p1}, Lcom/orhanobut/logger/Settings;->getLogAdapter()Lcom/orhanobut/logger/LogAdapter;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/orhanobut/logger/LogAdapter;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 326
    :cond_0
    iget-object p1, p0, Lcom/orhanobut/logger/LoggerPrinter;->settings:Lcom/orhanobut/logger/Settings;

    invoke-virtual {p1}, Lcom/orhanobut/logger/Settings;->getLogAdapter()Lcom/orhanobut/logger/LogAdapter;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/orhanobut/logger/LogAdapter;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private logContent(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "line.separator"

    .line 310
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 311
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p3, v1

    .line 312
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u2551 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, p2, v2}, Lcom/orhanobut/logger/LoggerPrinter;->logChunk(ILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private logDivider(ILjava/lang/String;)V
    .locals 1

    const-string v0, "\u255f\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

    .line 306
    invoke-direct {p0, p1, p2, v0}, Lcom/orhanobut/logger/LoggerPrinter;->logChunk(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private logHeaderContent(ILjava/lang/String;I)V
    .locals 6

    .line 265
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 266
    iget-object v1, p0, Lcom/orhanobut/logger/LoggerPrinter;->settings:Lcom/orhanobut/logger/Settings;

    invoke-virtual {v1}, Lcom/orhanobut/logger/Settings;->isShowThreadInfo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u2551 Thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/orhanobut/logger/LoggerPrinter;->logChunk(ILjava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-direct {p0, p1, p2}, Lcom/orhanobut/logger/LoggerPrinter;->logDivider(ILjava/lang/String;)V

    :cond_0
    const-string v1, ""

    .line 272
    invoke-direct {p0, v0}, Lcom/orhanobut/logger/LoggerPrinter;->getStackOffset([Ljava/lang/StackTraceElement;)I

    move-result v2

    iget-object v3, p0, Lcom/orhanobut/logger/LoggerPrinter;->settings:Lcom/orhanobut/logger/Settings;

    invoke-virtual {v3}, Lcom/orhanobut/logger/Settings;->getMethodOffset()I

    move-result v3

    add-int/2addr v2, v3

    add-int v3, p3, v2

    .line 275
    array-length v4, v0

    if-le v3, v4, :cond_1

    .line 276
    array-length p3, v0

    sub-int/2addr p3, v2

    add-int/lit8 p3, p3, -0x1

    :cond_1
    :goto_0
    if-lez p3, :cond_3

    add-int v3, p3, v2

    .line 281
    array-length v4, v0

    if-lt v3, v4, :cond_2

    goto :goto_1

    .line 284
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u2551 "

    .line 285
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v3

    .line 287
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/orhanobut/logger/LoggerPrinter;->getSimpleClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    .line 288
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v3

    .line 289
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    .line 290
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    .line 291
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v3

    .line 292
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    .line 293
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v3

    .line 294
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    .line 295
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 297
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, p2, v3}, Lcom/orhanobut/logger/LoggerPrinter;->logChunk(ILjava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private logTopBorder(ILjava/lang/String;)V
    .locals 1

    const-string v0, "\u2554\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550"

    .line 260
    invoke-direct {p0, p1, p2, v0}, Lcom/orhanobut/logger/LoggerPrinter;->logChunk(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)V
    .locals 3

    .line 115
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    check-cast p1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 120
    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/orhanobut/logger/LoggerPrinter;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 110
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/orhanobut/logger/LoggerPrinter;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 124
    invoke-virtual {p0, v0, p1, p2}, Lcom/orhanobut/logger/LoggerPrinter;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x6

    .line 128
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/orhanobut/logger/LoggerPrinter;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getSettings()Lcom/orhanobut/logger/Settings;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/orhanobut/logger/LoggerPrinter;->settings:Lcom/orhanobut/logger/Settings;

    return-object v0
.end method

.method public varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 136
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/orhanobut/logger/LoggerPrinter;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public init(Ljava/lang/String;)Lcom/orhanobut/logger/Settings;
    .locals 1

    if-eqz p1, :cond_1

    .line 90
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iput-object p1, p0, Lcom/orhanobut/logger/LoggerPrinter;->tag:Ljava/lang/String;

    .line 94
    iget-object p1, p0, Lcom/orhanobut/logger/LoggerPrinter;->settings:Lcom/orhanobut/logger/Settings;

    return-object p1

    .line 91
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "tag may not be empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 88
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "tag may not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public json(Ljava/lang/String;)V
    .locals 3

    .line 153
    invoke-static {p1}, Lcom/orhanobut/logger/Helper;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Empty/Null json content"

    .line 154
    invoke-virtual {p0, p1}, Lcom/orhanobut/logger/LoggerPrinter;->d(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 158
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v1, "{"

    .line 159
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    .line 160
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 162
    invoke-virtual {p0, p1}, Lcom/orhanobut/logger/LoggerPrinter;->d(Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string v1, "["

    .line 165
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 166
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 168
    invoke-virtual {p0, p1}, Lcom/orhanobut/logger/LoggerPrinter;->d(Ljava/lang/Object;)V

    return-void

    :cond_2
    const-string p1, "Invalid Json"

    .line 171
    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v1}, Lcom/orhanobut/logger/LoggerPrinter;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Invalid Json"

    .line 173
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/orhanobut/logger/LoggerPrinter;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    monitor-enter p0

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/orhanobut/logger/LoggerPrinter;->settings:Lcom/orhanobut/logger/Settings;

    invoke-virtual {v0}, Lcom/orhanobut/logger/Settings;->getLogLevel()Lcom/orhanobut/logger/LogLevel;

    move-result-object v0

    sget-object v1, Lcom/orhanobut/logger/LogLevel;->NONE:Lcom/orhanobut/logger/LogLevel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    .line 202
    monitor-exit p0

    return-void

    :cond_0
    if-eqz p4, :cond_1

    if-eqz p3, :cond_1

    .line 205
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " : "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lcom/orhanobut/logger/Helper;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_1
    if-eqz p4, :cond_2

    if-nez p3, :cond_2

    .line 208
    invoke-static {p4}, Lcom/orhanobut/logger/Helper;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    :cond_2
    if-nez p3, :cond_3

    const-string p3, "No message/exception is set"

    .line 213
    :cond_3
    invoke-direct {p0}, Lcom/orhanobut/logger/LoggerPrinter;->getMethodCount()I

    move-result p4

    .line 214
    invoke-static {p3}, Lcom/orhanobut/logger/Helper;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p3, "Empty/NULL log message"

    .line 218
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/orhanobut/logger/LoggerPrinter;->logTopBorder(ILjava/lang/String;)V

    .line 219
    invoke-direct {p0, p1, p2, p4}, Lcom/orhanobut/logger/LoggerPrinter;->logHeaderContent(ILjava/lang/String;I)V

    .line 222
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 223
    array-length v1, v0

    const/16 v2, 0xfa0

    if-gt v1, v2, :cond_6

    if-lez p4, :cond_5

    .line 226
    invoke-direct {p0, p1, p2}, Lcom/orhanobut/logger/LoggerPrinter;->logDivider(ILjava/lang/String;)V

    .line 228
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/orhanobut/logger/LoggerPrinter;->logContent(ILjava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-direct {p0, p1, p2}, Lcom/orhanobut/logger/LoggerPrinter;->logBottomBorder(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    monitor-exit p0

    return-void

    :cond_6
    if-lez p4, :cond_7

    .line 233
    :try_start_2
    invoke-direct {p0, p1, p2}, Lcom/orhanobut/logger/LoggerPrinter;->logDivider(ILjava/lang/String;)V

    :cond_7
    const/4 p3, 0x0

    :goto_0
    if-ge p3, v1, :cond_8

    sub-int p4, v1, p3

    .line 236
    invoke-static {p4, v2}, Ljava/lang/Math;->min(II)I

    move-result p4

    .line 238
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, p3, p4}, Ljava/lang/String;-><init>([BII)V

    invoke-direct {p0, p1, p2, v3}, Lcom/orhanobut/logger/LoggerPrinter;->logContent(ILjava/lang/String;Ljava/lang/String;)V

    add-int/lit16 p3, p3, 0xfa0

    goto :goto_0

    .line 240
    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/orhanobut/logger/LoggerPrinter;->logBottomBorder(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 241
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 200
    monitor-exit p0

    throw p1
.end method

.method public resetSettings()V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/orhanobut/logger/LoggerPrinter;->settings:Lcom/orhanobut/logger/Settings;

    invoke-virtual {v0}, Lcom/orhanobut/logger/Settings;->reset()V

    return-void
.end method

.method public t(Ljava/lang/String;I)Lcom/orhanobut/logger/Printer;
    .locals 1

    if-eqz p1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/orhanobut/logger/LoggerPrinter;->localTag:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 105
    :cond_0
    iget-object p1, p0, Lcom/orhanobut/logger/LoggerPrinter;->localMethodCount:Ljava/lang/ThreadLocal;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object p0
.end method

.method public varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 140
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/orhanobut/logger/LoggerPrinter;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 132
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/orhanobut/logger/LoggerPrinter;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs wtf(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x7

    const/4 v1, 0x0

    .line 144
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/orhanobut/logger/LoggerPrinter;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public xml(Ljava/lang/String;)V
    .locals 4

    .line 183
    invoke-static {p1}, Lcom/orhanobut/logger/Helper;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Empty/Null xml content"

    .line 184
    invoke-virtual {p0, p1}, Lcom/orhanobut/logger/LoggerPrinter;->d(Ljava/lang/Object;)V

    return-void

    .line 188
    :cond_0
    :try_start_0
    new-instance v0, Ljavax/xml/transform/stream/StreamSource;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/Reader;)V

    .line 189
    new-instance p1, Ljavax/xml/transform/stream/StreamResult;

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    invoke-direct {p1, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    .line 190
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v1

    const-string v2, "indent"

    const-string v3, "yes"

    .line 191
    invoke-virtual {v1, v2, v3}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "{http://xml.apache.org/xslt}indent-amount"

    const-string v3, "2"

    .line 192
    invoke-virtual {v1, v2, v3}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-virtual {v1, v0, p1}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 194
    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ">"

    const-string v1, ">\n"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/orhanobut/logger/LoggerPrinter;->d(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Invalid xml"

    const/4 v0, 0x0

    .line 196
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/orhanobut/logger/LoggerPrinter;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
