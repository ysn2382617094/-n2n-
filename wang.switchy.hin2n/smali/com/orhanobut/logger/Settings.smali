.class public final Lcom/orhanobut/logger/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# instance fields
.field private logAdapter:Lcom/orhanobut/logger/LogAdapter;

.field private logLevel:Lcom/orhanobut/logger/LogLevel;

.field private methodCount:I

.field private methodOffset:I

.field private showThreadInfo:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lcom/orhanobut/logger/Settings;->methodCount:I

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/orhanobut/logger/Settings;->showThreadInfo:Z

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/orhanobut/logger/Settings;->methodOffset:I

    .line 13
    sget-object v0, Lcom/orhanobut/logger/LogLevel;->FULL:Lcom/orhanobut/logger/LogLevel;

    iput-object v0, p0, Lcom/orhanobut/logger/Settings;->logLevel:Lcom/orhanobut/logger/LogLevel;

    return-void
.end method


# virtual methods
.method public getLogAdapter()Lcom/orhanobut/logger/LogAdapter;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/orhanobut/logger/Settings;->logAdapter:Lcom/orhanobut/logger/LogAdapter;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/orhanobut/logger/AndroidLogAdapter;

    invoke-direct {v0}, Lcom/orhanobut/logger/AndroidLogAdapter;-><init>()V

    iput-object v0, p0, Lcom/orhanobut/logger/Settings;->logAdapter:Lcom/orhanobut/logger/LogAdapter;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/orhanobut/logger/Settings;->logAdapter:Lcom/orhanobut/logger/LogAdapter;

    return-object v0
.end method

.method public getLogLevel()Lcom/orhanobut/logger/LogLevel;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/orhanobut/logger/Settings;->logLevel:Lcom/orhanobut/logger/LogLevel;

    return-object v0
.end method

.method public getMethodCount()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/orhanobut/logger/Settings;->methodCount:I

    return v0
.end method

.method public getMethodOffset()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/orhanobut/logger/Settings;->methodOffset:I

    return v0
.end method

.method public hideThreadInfo()Lcom/orhanobut/logger/Settings;
    .locals 1

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/orhanobut/logger/Settings;->showThreadInfo:Z

    return-object p0
.end method

.method public isShowThreadInfo()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/orhanobut/logger/Settings;->showThreadInfo:Z

    return v0
.end method

.method public logAdapter(Lcom/orhanobut/logger/LogAdapter;)Lcom/orhanobut/logger/Settings;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/orhanobut/logger/Settings;->logAdapter:Lcom/orhanobut/logger/LogAdapter;

    return-object p0
.end method

.method public logLevel(Lcom/orhanobut/logger/LogLevel;)Lcom/orhanobut/logger/Settings;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/orhanobut/logger/Settings;->logLevel:Lcom/orhanobut/logger/LogLevel;

    return-object p0
.end method

.method public methodCount(I)Lcom/orhanobut/logger/Settings;
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 24
    :cond_0
    iput p1, p0, Lcom/orhanobut/logger/Settings;->methodCount:I

    return-object p0
.end method

.method public methodOffset(I)Lcom/orhanobut/logger/Settings;
    .locals 0

    .line 34
    iput p1, p0, Lcom/orhanobut/logger/Settings;->methodOffset:I

    return-object p0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x2

    .line 67
    iput v0, p0, Lcom/orhanobut/logger/Settings;->methodCount:I

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lcom/orhanobut/logger/Settings;->methodOffset:I

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/orhanobut/logger/Settings;->showThreadInfo:Z

    .line 70
    sget-object v0, Lcom/orhanobut/logger/LogLevel;->FULL:Lcom/orhanobut/logger/LogLevel;

    iput-object v0, p0, Lcom/orhanobut/logger/Settings;->logLevel:Lcom/orhanobut/logger/LogLevel;

    return-void
.end method
