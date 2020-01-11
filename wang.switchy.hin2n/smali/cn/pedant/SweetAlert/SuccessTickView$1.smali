.class Lcn/pedant/SweetAlert/SuccessTickView$1;
.super Landroid/view/animation/Animation;
.source "SuccessTickView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/pedant/SweetAlert/SuccessTickView;->startTickAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/pedant/SweetAlert/SuccessTickView;


# direct methods
.method constructor <init>(Lcn/pedant/SweetAlert/SuccessTickView;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcn/pedant/SweetAlert/SuccessTickView$1;->this$0:Lcn/pedant/SweetAlert/SuccessTickView;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 11

    .line 95
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    float-to-double v0, p1

    const p2, 0x3e428f5c    # 0.19f

    const v2, 0x3f266666    # 0.65f

    const v3, 0x3e23d70a    # 0.16f

    const-wide v4, 0x3fe6666666666666L    # 0.7

    const-wide v6, 0x3fe147ae147ae148L    # 0.54

    cmpg-double v8, v6, v0

    if-gez v8, :cond_1

    cmpl-double v6, v4, v0

    if-ltz v6, :cond_1

    .line 97
    iget-object v4, p0, Lcn/pedant/SweetAlert/SuccessTickView$1;->this$0:Lcn/pedant/SweetAlert/SuccessTickView;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcn/pedant/SweetAlert/SuccessTickView;->access$002(Lcn/pedant/SweetAlert/SuccessTickView;Z)Z

    .line 98
    iget-object v4, p0, Lcn/pedant/SweetAlert/SuccessTickView$1;->this$0:Lcn/pedant/SweetAlert/SuccessTickView;

    iget-object v5, p0, Lcn/pedant/SweetAlert/SuccessTickView$1;->this$0:Lcn/pedant/SweetAlert/SuccessTickView;

    invoke-static {v5}, Lcn/pedant/SweetAlert/SuccessTickView;->access$200(Lcn/pedant/SweetAlert/SuccessTickView;)F

    move-result v5

    const v6, 0x3f0a3d71    # 0.54f

    sub-float v6, p1, v6

    div-float/2addr v6, v3

    mul-float v5, v5, v6

    invoke-static {v4, v5}, Lcn/pedant/SweetAlert/SuccessTickView;->access$102(Lcn/pedant/SweetAlert/SuccessTickView;F)F

    const-wide v3, 0x3fe4cccccccccccdL    # 0.65

    cmpg-double v5, v3, v0

    if-gez v5, :cond_0

    .line 100
    iget-object v0, p0, Lcn/pedant/SweetAlert/SuccessTickView$1;->this$0:Lcn/pedant/SweetAlert/SuccessTickView;

    iget-object v1, p0, Lcn/pedant/SweetAlert/SuccessTickView$1;->this$0:Lcn/pedant/SweetAlert/SuccessTickView;

    invoke-static {v1}, Lcn/pedant/SweetAlert/SuccessTickView;->access$400(Lcn/pedant/SweetAlert/SuccessTickView;)F

    move-result v1

    sub-float/2addr p1, v2

    div-float/2addr p1, p2

    mul-float v1, v1, p1

    invoke-static {v0, v1}, Lcn/pedant/SweetAlert/SuccessTickView;->access$302(Lcn/pedant/SweetAlert/SuccessTickView;F)F

    .line 102
    :cond_0
    iget-object p1, p0, Lcn/pedant/SweetAlert/SuccessTickView$1;->this$0:Lcn/pedant/SweetAlert/SuccessTickView;

    invoke-virtual {p1}, Lcn/pedant/SweetAlert/SuccessTickView;->invalidate()V

    goto/16 :goto_1

    :cond_1
    const/4 v6, 0x0

    const-wide v7, 0x3feae147ae147ae1L    # 0.84

    const/high16 v9, 0x3f800000    # 1.0f

    cmpg-double v10, v4, v0

    if-gez v10, :cond_3

    cmpl-double v4, v7, v0

    if-ltz v4, :cond_3

    .line 104
    iget-object v0, p0, Lcn/pedant/SweetAlert/SuccessTickView$1;->this$0:Lcn/pedant/SweetAlert/SuccessTickView;

    invoke-static {v0, v6}, Lcn/pedant/SweetAlert/SuccessTickView;->access$002(Lcn/pedant/SweetAlert/SuccessTickView;Z)Z

    .line 105
    iget-object v0, p0, Lcn/pedant/SweetAlert/SuccessTickView$1;->this$0:Lcn/pedant/SweetAlert/SuccessTickView;

    iget-object v1, p0, Lcn/pedant/SweetAlert/SuccessTickView$1;->this$0:Lcn/pedant/SweetAlert/SuccessTickView;

    invoke-static {v1}, Lcn/pedant/SweetAlert/SuccessTickView;->access$200(Lcn/pedant/SweetAlert/SuccessTickView;)F

    move-result v1

    const v3, 0x3f333333    # 0.7f

    sub-float v3, p1, v3

    const v4, 0x3e0f5c29    # 0.14f

    div-float/2addr v3, v4

    sub-float/2addr v9, v3

    mul-float v1, v1, v9

    invoke-static {v0, v1}, Lcn/pedant/SweetAlert/SuccessTickView;->access$102(Lcn/pedant/SweetAlert/SuccessTickView;F)F

    .line 106
    iget-object v0, p0, Lcn/pedant/SweetAlert/SuccessTickView$1;->this$0:Lcn/pedant/SweetAlert/SuccessTickView;

    iget-object v1, p0, Lcn/pedant/SweetAlert/SuccessTickView$1;->this$0:Lcn/pedant/SweetAlert/SuccessTickView;

    invoke-static {v1}, Lcn/pedant/SweetAlert/SuccessTickView;->access$100(Lcn/pedant/SweetAlert/SuccessTickView;)F

    move-result v1

    iget-object v3, p0, Lcn/pedant/SweetAlert/SuccessTickView$1;->this$0:Lcn/pedant/SweetAlert/SuccessTickView;

    invoke-static {v3}, Lcn/pedant/SweetAlert/SuccessTickView;->access$500(Lcn/pedant/SweetAlert/SuccessTickView;)F

    move-result v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_2

    iget-object v1, p0, Lcn/pedant/SweetAlert/SuccessTickView$1;->this$0:Lcn/pedant/SweetAlert/SuccessTickView;

    invoke-static {v1}, Lcn/pedant/SweetAlert/SuccessTickView;->access$500(Lcn/pedant/SweetAlert/SuccessTickView;)F

    move-result v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcn/pedant/SweetAlert/SuccessTickView$1;->this$0:Lcn/pedant/SweetAlert/SuccessTickView;

    invoke-static {v1}, Lcn/pedant/SweetAlert/SuccessTickView;->access$100(Lcn/pedant/SweetAlert/SuccessTickView;)F

    move-result v1

    :goto_0
    invoke-static {v0, v1}, Lcn/pedant/SweetAlert/SuccessTickView;->access$102(Lcn/pedant/SweetAlert/SuccessTickView;F)F

    .line 107
    iget-object v0, p0, Lcn/pedant/SweetAlert/SuccessTickView$1;->this$0:Lcn/pedant/SweetAlert/SuccessTickView;

    iget-object v1, p0, Lcn/pedant/SweetAlert/SuccessTickView$1;->this$0:Lcn/pedant/SweetAlert/SuccessTickView;

    invoke-static {v1}, Lcn/pedant/SweetAlert/SuccessTickView;->access$400(Lcn/pedant/SweetAlert/SuccessTickView;)F

    move-result v1

    sub-float/2addr p1, v2

    div-float/2addr p1, p2

    mul-float v1, v1, p1

    invoke-static {v0, v1}, Lcn/pedant/SweetAlert/SuccessTickView;->access$302(Lcn/pedant/SweetAlert/SuccessTickView;F)F

    .line 108
    iget-object p1, p0, Lcn/pedant/SweetAlert/SuccessTickView$1;->this$0:Lcn/pedant/SweetAlert/SuccessTickView;

    invoke-virtual {p1}, Lcn/pedant/SweetAlert/SuccessTickView;->invalidate()V

    goto :goto_1

    :cond_3
    cmpg-double p2, v7, v0

    if-gez p2, :cond_4

    cmpl-float p2, v9, p1

    if-ltz p2, :cond_4

    .line 110
    iget-object p2, p0, Lcn/pedant/SweetAlert/SuccessTickView$1;->this$0:Lcn/pedant/SweetAlert/SuccessTickView;

    invoke-static {p2, v6}, Lcn/pedant/SweetAlert/SuccessTickView;->access$002(Lcn/pedant/SweetAlert/SuccessTickView;Z)Z

    .line 111
    iget-object p2, p0, Lcn/pedant/SweetAlert/SuccessTickView$1;->this$0:Lcn/pedant/SweetAlert/SuccessTickView;

    iget-object v0, p0, Lcn/pedant/SweetAlert/SuccessTickView$1;->this$0:Lcn/pedant/SweetAlert/SuccessTickView;

    invoke-static {v0}, Lcn/pedant/SweetAlert/SuccessTickView;->access$500(Lcn/pedant/SweetAlert/SuccessTickView;)F

    move-result v0

    iget-object v1, p0, Lcn/pedant/SweetAlert/SuccessTickView$1;->this$0:Lcn/pedant/SweetAlert/SuccessTickView;

    invoke-static {v1}, Lcn/pedant/SweetAlert/SuccessTickView;->access$600(Lcn/pedant/SweetAlert/SuccessTickView;)F

    move-result v1

    iget-object v2, p0, Lcn/pedant/SweetAlert/SuccessTickView$1;->this$0:Lcn/pedant/SweetAlert/SuccessTickView;

    invoke-static {v2}, Lcn/pedant/SweetAlert/SuccessTickView;->access$500(Lcn/pedant/SweetAlert/SuccessTickView;)F

    move-result v2

    sub-float/2addr v1, v2

    const v2, 0x3f570a3d    # 0.84f

    sub-float/2addr p1, v2

    div-float/2addr p1, v3

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    invoke-static {p2, v0}, Lcn/pedant/SweetAlert/SuccessTickView;->access$102(Lcn/pedant/SweetAlert/SuccessTickView;F)F

    .line 112
    iget-object p2, p0, Lcn/pedant/SweetAlert/SuccessTickView$1;->this$0:Lcn/pedant/SweetAlert/SuccessTickView;

    iget-object v0, p0, Lcn/pedant/SweetAlert/SuccessTickView$1;->this$0:Lcn/pedant/SweetAlert/SuccessTickView;

    invoke-static {v0}, Lcn/pedant/SweetAlert/SuccessTickView;->access$700(Lcn/pedant/SweetAlert/SuccessTickView;)F

    move-result v0

    iget-object v1, p0, Lcn/pedant/SweetAlert/SuccessTickView$1;->this$0:Lcn/pedant/SweetAlert/SuccessTickView;

    invoke-static {v1}, Lcn/pedant/SweetAlert/SuccessTickView;->access$400(Lcn/pedant/SweetAlert/SuccessTickView;)F

    move-result v1

    iget-object v2, p0, Lcn/pedant/SweetAlert/SuccessTickView$1;->this$0:Lcn/pedant/SweetAlert/SuccessTickView;

    invoke-static {v2}, Lcn/pedant/SweetAlert/SuccessTickView;->access$700(Lcn/pedant/SweetAlert/SuccessTickView;)F

    move-result v2

    sub-float/2addr v1, v2

    sub-float/2addr v9, p1

    mul-float v1, v1, v9

    add-float/2addr v0, v1

    invoke-static {p2, v0}, Lcn/pedant/SweetAlert/SuccessTickView;->access$302(Lcn/pedant/SweetAlert/SuccessTickView;F)F

    .line 113
    iget-object p1, p0, Lcn/pedant/SweetAlert/SuccessTickView$1;->this$0:Lcn/pedant/SweetAlert/SuccessTickView;

    invoke-virtual {p1}, Lcn/pedant/SweetAlert/SuccessTickView;->invalidate()V

    :cond_4
    :goto_1
    return-void
.end method
