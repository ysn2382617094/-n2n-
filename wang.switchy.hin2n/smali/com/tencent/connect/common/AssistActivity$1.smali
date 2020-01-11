.class Lcom/tencent/connect/common/AssistActivity$1;
.super Landroid/os/Handler;
.source "AssistActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/connect/common/AssistActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/connect/common/AssistActivity;


# direct methods
.method constructor <init>(Lcom/tencent/connect/common/AssistActivity;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/tencent/connect/common/AssistActivity$1;->this$0:Lcom/tencent/connect/common/AssistActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 26
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    iget-object p1, p0, Lcom/tencent/connect/common/AssistActivity$1;->this$0:Lcom/tencent/connect/common/AssistActivity;

    invoke-virtual {p1}, Lcom/tencent/connect/common/AssistActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 29
    iget-object p1, p0, Lcom/tencent/connect/common/AssistActivity$1;->this$0:Lcom/tencent/connect/common/AssistActivity;

    invoke-virtual {p1}, Lcom/tencent/connect/common/AssistActivity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method
