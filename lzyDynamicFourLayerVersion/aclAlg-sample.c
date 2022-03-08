
#include <stdio.h>
#include "aclAlg.h"

typedef struct AclTable_t {
    int todo; /* ��������Ƶ�ACL�㷨��������ݽṹ */
} AclTable;

/* ����һ��ACL Table���󣬾����AclTable���ݽṹ���û����о���
    * ����û�����Ҫ����Table����ֱ�ӷ���NULL���� */
AclTable* aclCreate()
{
    AclTable *tbl = (AclTable*)aclMemMalloc(sizeof(AclTable));
    /* ��ʼ������㷨���ݽṹ */

    return tbl;
}

    /* ��ACL Table����� num ��ACL���򣬳ɹ�����0�����򷵻ط�0 */
uint32_t aclInsert(AclTable *tbl, AclRule *rules, uint32_t num)
{
    for (uint32_t i = 0; i < num; i++) {
        AclRule *r = &rules[i];
        /*printf("\nInsert rule sip 0x%08x/%u, dip 0x%08x/%u, sport [%u-%u], dport [%u-%u], proto %u, index %u.", 
            r->sip.ip, r->sip.len, r->dip.ip, r->dip.len,
            r->sport.from, r->sport.to,
            r->dport.from, r->dport.to,
            r->proto, r->index);*/
    }
    return 0;
}

/* ��ѯһ��ACL��Ԫ�飬�����������ӵĹ����򷵻ظù����Ӧ��index�����򷵻�0��
 * ������ж��������򷵻����ȼ���ߵĹ����Ӧ��index��
 * ע�⣺�����е�printf��IO��ʾ�������Ἣ���Ӱ���㷨���ܣ��Ǳ�Ҫʱ�뾡����Ҫʹ�� */
uint32_t aclSearch(AclTable *tbl, AclTuple *tuple)
{
    /*printf("\nSearch sip 0x%08x, dip 0x%08x, sport %u, dport %u, proto %u.", 
		tuple->sip, tuple->dip, tuple->sport, tuple->dport, tuple->proto);*/
    return 0;
}