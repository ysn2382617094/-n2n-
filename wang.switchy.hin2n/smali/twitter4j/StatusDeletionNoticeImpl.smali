.class Ltwitter4j/StatusDeletionNoticeImpl;
.super Ljava/lang/Object;
.source "StatusDeletionNoticeImpl.java"

# interfaces
.implements Ltwitter4j/StatusDeletionNotice;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x7ee6bde1b1fca400L


# instance fields
.field private final statusId:J

.field private final userId:J


# direct methods
.method constructor <init>(Ltwitter4j/JSONObject;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "id"

    .line 32
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/JSONObject;)J

    move-result-wide v0

    iput-wide v0, p0, Ltwitter4j/StatusDeletionNoticeImpl;->statusId:J

    const-string v0, "user_id"

    .line 33
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/JSONObject;)J

    move-result-wide v0

    iput-wide v0, p0, Ltwitter4j/StatusDeletionNoticeImpl;->userId:J

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 25
    check-cast p1, Ltwitter4j/StatusDeletionNotice;

    invoke-virtual {p0, p1}, Ltwitter4j/StatusDeletionNoticeImpl;->compareTo(Ltwitter4j/StatusDeletionNotice;)I

    move-result p1

    return p1
.end method

.method public compareTo(Ltwitter4j/StatusDeletionNotice;)I
    .locals 4

    .line 48
    iget-wide v0, p0, Ltwitter4j/StatusDeletionNoticeImpl;->statusId:J

    invoke-interface {p1}, Ltwitter4j/StatusDeletionNotice;->getStatusId()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, -0x80000000

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/high16 p1, -0x80000000

    return p1

    :cond_0
    const-wide/32 v2, 0x7fffffff

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    const p1, 0x7fffffff

    return p1

    :cond_1
    long-to-int p1, v0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 62
    :cond_1
    check-cast p1, Ltwitter4j/StatusDeletionNoticeImpl;

    .line 64
    iget-wide v2, p0, Ltwitter4j/StatusDeletionNoticeImpl;->statusId:J

    iget-wide v4, p1, Ltwitter4j/StatusDeletionNoticeImpl;->statusId:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    return v1

    .line 65
    :cond_2
    iget-wide v2, p0, Ltwitter4j/StatusDeletionNoticeImpl;->userId:J

    iget-wide v4, p1, Ltwitter4j/StatusDeletionNoticeImpl;->userId:J

    cmp-long p1, v2, v4

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public getStatusId()J
    .locals 2

    .line 38
    iget-wide v0, p0, Ltwitter4j/StatusDeletionNoticeImpl;->statusId:J

    return-wide v0
.end method

.method public getUserId()J
    .locals 2

    .line 43
    iget-wide v0, p0, Ltwitter4j/StatusDeletionNoticeImpl;->userId:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    .line 72
    iget-wide v0, p0, Ltwitter4j/StatusDeletionNoticeImpl;->statusId:J

    iget-wide v2, p0, Ltwitter4j/StatusDeletionNoticeImpl;->statusId:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    .line 73
    iget-wide v1, p0, Ltwitter4j/StatusDeletionNoticeImpl;->userId:J

    iget-wide v5, p0, Ltwitter4j/StatusDeletionNoticeImpl;->userId:J

    ushr-long v3, v5, v4

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatusDeletionNoticeImpl{statusId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ltwitter4j/StatusDeletionNoticeImpl;->statusId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ltwitter4j/StatusDeletionNoticeImpl;->userId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
