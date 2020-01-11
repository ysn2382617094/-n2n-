.class Lcom/umeng/facebook/share/internal/DeviceShareDialogFragment$1;
.super Ljava/lang/Object;
.source "DeviceShareDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/facebook/share/internal/DeviceShareDialogFragment;->setCurrentRequestState(Lcom/umeng/facebook/share/internal/DeviceShareDialogFragment$RequestState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/facebook/share/internal/DeviceShareDialogFragment;


# direct methods
.method constructor <init>(Lcom/umeng/facebook/share/internal/DeviceShareDialogFragment;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/umeng/facebook/share/internal/DeviceShareDialogFragment$1;->this$0:Lcom/umeng/facebook/share/internal/DeviceShareDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/umeng/facebook/share/internal/DeviceShareDialogFragment$1;->this$0:Lcom/umeng/facebook/share/internal/DeviceShareDialogFragment;

    invoke-static {v0}, Lcom/umeng/facebook/share/internal/DeviceShareDialogFragment;->access$000(Lcom/umeng/facebook/share/internal/DeviceShareDialogFragment;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
