.class public abstract Lcom/umeng/facebook/internal/FacebookDialogBase$ModeHandler;
.super Ljava/lang/Object;
.source "FacebookDialogBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/facebook/internal/FacebookDialogBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "ModeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/facebook/internal/FacebookDialogBase;


# direct methods
.method protected constructor <init>(Lcom/umeng/facebook/internal/FacebookDialogBase;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/umeng/facebook/internal/FacebookDialogBase$ModeHandler;->this$0:Lcom/umeng/facebook/internal/FacebookDialogBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract canShow(Ljava/lang/Object;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCONTENT;Z)Z"
        }
    .end annotation
.end method

.method public abstract createAppCall(Ljava/lang/Object;)Lcom/umeng/facebook/internal/AppCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCONTENT;)",
            "Lcom/umeng/facebook/internal/AppCall;"
        }
    .end annotation
.end method

.method public getMode()Ljava/lang/Object;
    .locals 1

    .line 203
    sget-object v0, Lcom/umeng/facebook/internal/FacebookDialogBase;->BASE_AUTOMATIC_MODE:Ljava/lang/Object;

    return-object v0
.end method
